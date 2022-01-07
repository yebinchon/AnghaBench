
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ntb_softc {scalar_t__ type; } ;


 int ATOM_IBIST_ERR_OFLOW ;
 int ATOM_IBSTERRRCRVSTS0_OFFSET ;
 int ATOM_LTSSMSTATEJMP_FORCEDETECT ;
 int ATOM_LTSSMSTATEJMP_OFFSET ;
 int KASSERT (int,char*) ;
 scalar_t__ NTB_ATOM ;
 int intel_ntb_reg_read (int,int ) ;

__attribute__((used)) static inline bool
atom_link_is_err(struct ntb_softc *ntb)
{
 uint32_t status;

 KASSERT(ntb->type == NTB_ATOM, ("ntb type"));

 status = intel_ntb_reg_read(4, ATOM_LTSSMSTATEJMP_OFFSET);
 if ((status & ATOM_LTSSMSTATEJMP_FORCEDETECT) != 0)
  return (1);

 status = intel_ntb_reg_read(4, ATOM_IBSTERRRCRVSTS0_OFFSET);
 return ((status & ATOM_IBIST_ERR_OFLOW) != 0);
}
