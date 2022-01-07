
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int devlist_lock; int *** device_list; } ;
typedef TYPE_1__ pqisrc_softstate_t ;
struct TYPE_9__ {size_t target; size_t lun; } ;
typedef TYPE_2__ pqi_scsi_dev_t ;


 int DBG_ERR (char*,TYPE_1__*) ;
 int DBG_FUNC (char*) ;
 int OS_ACQUIRE_SPINLOCK (int *) ;
 int OS_RELEASE_SPINLOCK (int *) ;
 int pqisrc_device_mem_free (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void pqisrc_adjust_list(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device)
{
 DBG_FUNC("IN\n");

 if (!device) {
  DBG_ERR("softs = %p: device is NULL !!!\n", softs);
  return;
 }

 OS_ACQUIRE_SPINLOCK(&softs->devlist_lock);
 softs->device_list[device->target][device->lun] = ((void*)0);
 OS_RELEASE_SPINLOCK(&softs->devlist_lock);
 pqisrc_device_mem_free(softs, device);

 DBG_FUNC("OUT\n");
}
