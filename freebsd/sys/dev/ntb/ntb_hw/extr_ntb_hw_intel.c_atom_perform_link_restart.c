
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ntb_softc {int dummy; } ;


 int ATOM_DESKEWSTS_DBERR ;
 int ATOM_DESKEWSTS_OFFSET ;
 int ATOM_ERRCORSTS_OFFSET ;
 int ATOM_IBIST_ERR_OFLOW ;
 int ATOM_IBSTERRRCRVSTS0_OFFSET ;
 int ATOM_LTSSMERRSTS0_OFFSET ;
 int ATOM_LTSSMERRSTS0_UNEXPECTEDEI ;
 int ATOM_LTSSMSTATEJMP_FORCEDETECT ;
 int ATOM_LTSSMSTATEJMP_OFFSET ;
 int ATOM_MODPHY_PCSREG4 ;
 int ATOM_MODPHY_PCSREG6 ;
 int PCIM_AER_COR_REPLAY_ROLLOVER ;
 int hz ;
 int intel_ntb_reg_read (int,int ) ;
 int intel_ntb_reg_write (int,int ,int) ;
 int pause (char*,int) ;

__attribute__((used)) static void
atom_perform_link_restart(struct ntb_softc *ntb)
{
 uint32_t status;


 intel_ntb_reg_write(1, ATOM_MODPHY_PCSREG6, 0xe0);
 intel_ntb_reg_write(1, ATOM_MODPHY_PCSREG4, 0x40);
 intel_ntb_reg_write(1, ATOM_MODPHY_PCSREG4, 0x60);
 intel_ntb_reg_write(1, ATOM_MODPHY_PCSREG6, 0x60);


 pause("ModPhy", hz / 10);


 status = intel_ntb_reg_read(4, ATOM_ERRCORSTS_OFFSET);
 status &= PCIM_AER_COR_REPLAY_ROLLOVER;
 intel_ntb_reg_write(4, ATOM_ERRCORSTS_OFFSET, status);


 status = intel_ntb_reg_read(4, ATOM_LTSSMERRSTS0_OFFSET);
 status |= ATOM_LTSSMERRSTS0_UNEXPECTEDEI;
 intel_ntb_reg_write(4, ATOM_LTSSMERRSTS0_OFFSET, status);


 status = intel_ntb_reg_read(4, ATOM_DESKEWSTS_OFFSET);
 status |= ATOM_DESKEWSTS_DBERR;
 intel_ntb_reg_write(4, ATOM_DESKEWSTS_OFFSET, status);

 status = intel_ntb_reg_read(4, ATOM_IBSTERRRCRVSTS0_OFFSET);
 status &= ATOM_IBIST_ERR_OFLOW;
 intel_ntb_reg_write(4, ATOM_IBSTERRRCRVSTS0_OFFSET, status);


 status = intel_ntb_reg_read(4, ATOM_LTSSMSTATEJMP_OFFSET);
 status &= ~ATOM_LTSSMSTATEJMP_FORCEDETECT;
 intel_ntb_reg_write(4, ATOM_LTSSMSTATEJMP_OFFSET, status);
}
