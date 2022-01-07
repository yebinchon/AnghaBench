
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int devlist_lock; } ;
typedef TYPE_1__ pqisrc_softstate_t ;
struct TYPE_10__ {int target; } ;
typedef TYPE_2__ pqi_scsi_dev_t ;


 int OS_ACQUIRE_SPINLOCK (int *) ;
 int OS_RELEASE_SPINLOCK (int *) ;
 int pqisrc_device_mem_free (TYPE_1__*,TYPE_2__*) ;
 int pqisrc_free_tid (TYPE_1__*,int ) ;
 int pqisrc_is_logical_device (TYPE_2__*) ;

void pqisrc_free_device(pqisrc_softstate_t * softs,pqi_scsi_dev_t *device)
{

  OS_ACQUIRE_SPINLOCK(&softs->devlist_lock);
  if (!pqisrc_is_logical_device(device)) {
   pqisrc_free_tid(softs,device->target);
  }
  pqisrc_device_mem_free(softs, device);
  OS_RELEASE_SPINLOCK(&softs->devlist_lock);

}
