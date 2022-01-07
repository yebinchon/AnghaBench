
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct TYPE_5__ {int dat; scalar_t__ val; scalar_t__ pending; } ;
struct TYPE_7__ {TYPE_1__ s; int u64; } ;
typedef TYPE_3__ cvmx_smi_rd_dat_t ;
struct TYPE_6__ {int phy_op; int phy_adr; int reg_adr; } ;
struct TYPE_8__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef TYPE_4__ cvmx_smi_cmd_t ;


 int CVMX_SMI_CMD ;
 int CVMX_SMI_RD_DAT ;
 int MDIO_LOCK () ;
 int MDIO_UNLOCK () ;
 int cvmx_read_csr (int ) ;
 int cvmx_wait (int) ;
 int cvmx_write_csr (int ,scalar_t__) ;

int cvm_oct_mdio_read(struct ifnet *ifp, int phy_id, int location)
{
 cvmx_smi_cmd_t smi_cmd;
 cvmx_smi_rd_dat_t smi_rd;

 MDIO_LOCK();
 smi_cmd.u64 = 0;
 smi_cmd.s.phy_op = 1;
 smi_cmd.s.phy_adr = phy_id;
 smi_cmd.s.reg_adr = location;
 cvmx_write_csr(CVMX_SMI_CMD, smi_cmd.u64);

 do {
  cvmx_wait(1000);
  smi_rd.u64 = cvmx_read_csr(CVMX_SMI_RD_DAT);
 } while (smi_rd.s.pending);

 MDIO_UNLOCK();

 if (smi_rd.s.val)
  return smi_rd.s.dat;
 else
  return 0;
}
