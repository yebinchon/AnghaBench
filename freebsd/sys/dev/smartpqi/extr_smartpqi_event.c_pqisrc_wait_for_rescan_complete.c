
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scan_lock; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int os_sema_lock (int *) ;
 int os_sema_unlock (int *) ;

void pqisrc_wait_for_rescan_complete(pqisrc_softstate_t *softs)
{
 os_sema_lock(&softs->scan_lock);
 os_sema_unlock(&softs->scan_lock);
}
