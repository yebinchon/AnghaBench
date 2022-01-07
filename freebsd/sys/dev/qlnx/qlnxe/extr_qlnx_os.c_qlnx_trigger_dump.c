
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int num_hwfns; } ;
struct TYPE_11__ {int error_recovery; int * idle_chk_dwords; int * grcdump_dwords; TYPE_1__ cdev; TYPE_2__* ifp; } ;
typedef TYPE_3__ qlnx_host_t ;
struct TYPE_10__ {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int QL_DPRINT2 (TYPE_3__*,char*) ;
 int qlnx_grc_dump (TYPE_3__*,int *,int) ;
 int qlnx_idle_chk (TYPE_3__*,int *,int) ;
 scalar_t__ qlnx_vf_device (TYPE_3__*) ;

__attribute__((used)) static void
qlnx_trigger_dump(qlnx_host_t *ha)
{
 int i;

 if (ha->ifp != ((void*)0))
  ha->ifp->if_drv_flags &= ~(IFF_DRV_OACTIVE | IFF_DRV_RUNNING);

 QL_DPRINT2(ha, "enter\n");

 if (qlnx_vf_device(ha) == 0)
  return;

 ha->error_recovery = 1;

 for (i = 0; i < ha->cdev.num_hwfns; i++) {
  qlnx_grc_dump(ha, &ha->grcdump_dwords[i], i);
  qlnx_idle_chk(ha, &ha->idle_chk_dwords[i], i);
 }

 QL_DPRINT2(ha, "exit\n");

 return;
}
