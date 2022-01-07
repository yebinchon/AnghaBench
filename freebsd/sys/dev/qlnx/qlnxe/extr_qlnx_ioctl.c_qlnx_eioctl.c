
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct ifnet {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_22__ {int * buffer; int cmd; int * size; } ;
typedef TYPE_2__ qlnx_trace_t ;
typedef int qlnx_storm_stats_dump_t ;
typedef int qlnx_reg_rd_wr_t ;
typedef int qlnx_perm_mac_addr_t ;
typedef int qlnx_pcicfg_rd_wr_t ;
typedef int qlnx_nvram_t ;
typedef int qlnx_lldp_sys_tlvs_t ;
typedef int qlnx_idle_chk_t ;
struct TYPE_21__ {int num_hwfns; } ;
struct TYPE_23__ {TYPE_1__ cdev; struct ifnet* ifp; } ;
typedef TYPE_3__ qlnx_host_t ;
typedef int qlnx_grcdump_t ;
typedef int qlnx_get_regs_t ;
typedef int qlnx_drvinfo_t ;
typedef int qlnx_dev_setting_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENXIO ;
 int qlnx_dev_settings (TYPE_3__*,int *) ;
 int qlnx_drv_info (TYPE_3__*,int *) ;
 int qlnx_get_grc_dump (TYPE_3__*,int *) ;
 int qlnx_get_grc_dump_size (TYPE_3__*,int *) ;
 int qlnx_get_idle_chk (TYPE_3__*,int *) ;
 int qlnx_get_idle_chk_size (TYPE_3__*,int *) ;
 int qlnx_get_regs (TYPE_3__*,int *) ;
 int qlnx_get_trace (TYPE_3__*,int,TYPE_2__*) ;
 int qlnx_get_trace_size (TYPE_3__*,TYPE_2__*) ;
 int qlnx_mac_addr (TYPE_3__*,int *) ;
 int qlnx_nvram (TYPE_3__*,int *) ;
 int qlnx_rd_wr_pci_config (TYPE_3__*,int *) ;
 int qlnx_reg_rd_wr (TYPE_3__*,int *) ;
 int qlnx_set_lldp_tlvx (TYPE_3__*,int *) ;
 int qlnx_storm_stats (TYPE_3__*,int *) ;

__attribute__((used)) static int
qlnx_eioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
 struct thread *td)
{
 qlnx_host_t *ha;
 int rval = 0;
 struct ifnet *ifp;
 qlnx_trace_t *trace;
 int i;

 if ((ha = (qlnx_host_t *)dev->si_drv1) == ((void*)0))
  return ENXIO;

 ifp = ha->ifp;

 switch (cmd) {

 case 138:
  qlnx_get_grc_dump_size(ha, (qlnx_grcdump_t *)data);
  break;

 case 139:
  rval = qlnx_get_grc_dump(ha, (qlnx_grcdump_t *)data);
  break;

 case 136:
  qlnx_get_idle_chk_size(ha, (qlnx_idle_chk_t *)data);
  break;

 case 137:
  rval = qlnx_get_idle_chk(ha, (qlnx_idle_chk_t *)data);
  break;

 case 141:
  rval = qlnx_drv_info(ha, (qlnx_drvinfo_t *)data);
  break;

 case 142:
  rval = qlnx_dev_settings(ha, (qlnx_dev_setting_t *)data);
  break;

 case 140:
  rval = qlnx_get_regs(ha, (qlnx_get_regs_t *)data);
  break;

 case 134:
  rval = qlnx_nvram(ha, (qlnx_nvram_t *)data);
  break;

 case 132:
  rval = qlnx_reg_rd_wr(ha, (qlnx_reg_rd_wr_t *)data);
  break;

 case 133:
  rval = qlnx_rd_wr_pci_config(ha, (qlnx_pcicfg_rd_wr_t *)data);
  break;

 case 135:
  qlnx_mac_addr(ha, (qlnx_perm_mac_addr_t *)data);
  break;

 case 130:
  qlnx_storm_stats(ha, (qlnx_storm_stats_dump_t *)data);
  break;

 case 128:
  qlnx_get_trace_size(ha, (qlnx_trace_t *)data);
  break;

 case 129:
  trace = (qlnx_trace_t *)data;

  for (i = 0; i < ha->cdev.num_hwfns; i++) {

   if (trace->size[i] && trace->cmd && trace->buffer[i])
    rval = qlnx_get_trace(ha, i, trace);

   if (rval)
    break;
  }
  break;







 default:
  rval = EINVAL;
  break;
 }

 return (rval);
}
