
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int scan_lock; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int os_destroy_intr (TYPE_1__*) ;
 int os_destroy_semaphore (int *) ;
 int pqisrc_cleanup_devices (TYPE_1__*) ;
 int pqisrc_pqi_uninit (TYPE_1__*) ;
 int pqisrc_sis_uninit (TYPE_1__*) ;

void pqisrc_uninit(pqisrc_softstate_t *softs)
{
 DBG_FUNC("IN\n");

 pqisrc_pqi_uninit(softs);

 pqisrc_sis_uninit(softs);

 os_destroy_semaphore(&softs->scan_lock);

 os_destroy_intr(softs);

 pqisrc_cleanup_devices(softs);

 DBG_FUNC("OUT\n");
}
