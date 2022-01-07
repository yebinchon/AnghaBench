
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct xenbus_device_ivars* node; } ;
struct xenbus_device_ivars {scalar_t__ xd_otherend_path_len; struct xenbus_device_ivars* xd_otherend_path; struct xenbus_device_ivars* xd_type; scalar_t__ xd_node_len; struct xenbus_device_ivars* xd_node; TYPE_1__ xd_local_watch; TYPE_1__ xd_otherend_watch; } ;


 int M_XENBUS ;
 int free (struct xenbus_device_ivars*,int ) ;
 int xs_unregister_watch (TYPE_1__*) ;

__attribute__((used)) static void
xenbusb_free_child_ivars(struct xenbus_device_ivars *ivars)
{
 if (ivars->xd_otherend_watch.node != ((void*)0)) {
  xs_unregister_watch(&ivars->xd_otherend_watch);
  free(ivars->xd_otherend_watch.node, M_XENBUS);
  ivars->xd_otherend_watch.node = ((void*)0);
 }

 if (ivars->xd_local_watch.node != ((void*)0)) {
  xs_unregister_watch(&ivars->xd_local_watch);
  ivars->xd_local_watch.node = ((void*)0);
 }

 if (ivars->xd_node != ((void*)0)) {
  free(ivars->xd_node, M_XENBUS);
  ivars->xd_node = ((void*)0);
 }
 ivars->xd_node_len = 0;

 if (ivars->xd_type != ((void*)0)) {
  free(ivars->xd_type, M_XENBUS);
  ivars->xd_type = ((void*)0);
 }

 if (ivars->xd_otherend_path != ((void*)0)) {
  free(ivars->xd_otherend_path, M_XENBUS);
  ivars->xd_otherend_path = ((void*)0);
 }
 ivars->xd_otherend_path_len = 0;

 free(ivars, M_XENBUS);
}
