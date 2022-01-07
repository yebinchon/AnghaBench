
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* him_handle; } ;
struct TYPE_15__ {TYPE_2__ ldm_adapter; struct TYPE_15__* next; int irq_handle; int irq_res; int pcidev; } ;
struct TYPE_12__ {scalar_t__ ta_context; } ;
struct TYPE_14__ {int lock; int timer; TYPE_4__* hba_list; TYPE_1__ worker; int vbus; } ;
typedef scalar_t__ PVDEV ;
typedef TYPE_3__* PVBUS_EXT ;
typedef int PVBUS ;
typedef TYPE_4__* PHBA ;


 int KdPrint (char*) ;
 int M_DEVBUF ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 int free (TYPE_3__*,int ) ;
 scalar_t__ hpt_flush_vdev (TYPE_3__*,scalar_t__) ;
 int hpt_free_mem (TYPE_3__*) ;
 int hpt_lock_vbus (TYPE_3__*) ;
 int hpt_stop_tasks (TYPE_3__*) ;
 int hpt_unlock_vbus (TYPE_3__*) ;
 scalar_t__ ldm_find_target (int ,int) ;
 int ldm_release_vbus (int ) ;
 int ldm_shutdown (int ) ;
 int mtx_destroy (int *) ;
 int osm_max_targets ;

__attribute__((used)) static void hpt_shutdown_vbus(PVBUS_EXT vbus_ext, int howto)
{
 PVBUS vbus = (PVBUS)vbus_ext->vbus;
 PHBA hba;
 int i;

 KdPrint(("hpt_shutdown_vbus"));


 hpt_stop_tasks(vbus_ext);
 hpt_lock_vbus(vbus_ext);
 vbus_ext->worker.ta_context = 0;


 for (i=0; i<osm_max_targets; i++) {
  PVDEV vd = ldm_find_target(vbus, i);
  if (vd) {

   if (hpt_flush_vdev(vbus_ext, vd))
    hpt_flush_vdev(vbus_ext, vd);
  }
 }

 ldm_shutdown(vbus);
 hpt_unlock_vbus(vbus_ext);

 ldm_release_vbus(vbus);

 for (hba=vbus_ext->hba_list; hba; hba=hba->next)
  bus_teardown_intr(hba->pcidev, hba->irq_res, hba->irq_handle);

 hpt_free_mem(vbus_ext);

 while ((hba=vbus_ext->hba_list)) {
  vbus_ext->hba_list = hba->next;
  free(hba->ldm_adapter.him_handle, M_DEVBUF);
 }

 callout_drain(&vbus_ext->timer);
 mtx_destroy(&vbus_ext->lock);
 free(vbus_ext, M_DEVBUF);
 KdPrint(("hpt_shutdown_vbus done"));
}
