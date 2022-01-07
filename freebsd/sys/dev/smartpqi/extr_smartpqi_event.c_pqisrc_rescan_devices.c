
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scan_lock; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int os_sema_lock (int *) ;
 int os_sema_unlock (int *) ;
 int pqisrc_scan_devices (TYPE_1__*) ;

int
pqisrc_rescan_devices(pqisrc_softstate_t *softs)
{
 int ret;

 DBG_FUNC("IN\n");

 os_sema_lock(&softs->scan_lock);

 ret = pqisrc_scan_devices(softs);

 os_sema_unlock(&softs->scan_lock);

 DBG_FUNC("OUT\n");

 return ret;
}
