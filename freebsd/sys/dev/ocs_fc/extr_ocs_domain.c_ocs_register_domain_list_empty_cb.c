
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void (* domain_list_empty_cb ) (TYPE_1__*,void*) ;int domain_list; void* domain_list_empty_cb_arg; } ;
typedef TYPE_1__ ocs_t ;


 int ocs_device_lock (TYPE_1__*) ;
 int ocs_device_unlock (TYPE_1__*) ;
 scalar_t__ ocs_list_empty (int *) ;
 void stub1 (TYPE_1__*,void*) ;

void
ocs_register_domain_list_empty_cb(ocs_t *ocs, void (*callback)(ocs_t *ocs, void *arg), void *arg)
{
 ocs_device_lock(ocs);
  ocs->domain_list_empty_cb = callback;
  ocs->domain_list_empty_cb_arg = arg;
  if (ocs_list_empty(&ocs->domain_list) && callback) {
   (*callback)(ocs, arg);
  }
 ocs_device_unlock(ocs);
}
