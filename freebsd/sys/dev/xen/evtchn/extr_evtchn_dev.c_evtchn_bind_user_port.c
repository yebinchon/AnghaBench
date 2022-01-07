
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int enabled; int handle; struct per_user_data* user; int port; } ;
struct per_user_data {int bind_mutex; int evtchns; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int M_EVTCHN ;
 int RB_INSERT (int ,int *,struct user_evtchn*) ;
 int RB_REMOVE (int ,int *,struct user_evtchn*) ;
 int device_get_nameunit (int ) ;
 int evtchn_dev ;
 int evtchn_filter ;
 int evtchn_interrupt ;
 int evtchn_tree ;
 int free (struct user_evtchn*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xen_intr_add_handler (int ,int ,int ,struct user_evtchn*,int,int ) ;
 int xen_intr_port (int ) ;
 int xen_intr_unbind (int *) ;

__attribute__((used)) static inline int
evtchn_bind_user_port(struct per_user_data *u, struct user_evtchn *evtchn)
{
 int error;

 evtchn->port = xen_intr_port(evtchn->handle);
 evtchn->user = u;
 evtchn->enabled = 1;
 mtx_lock(&u->bind_mutex);
 RB_INSERT(evtchn_tree, &u->evtchns, evtchn);
 mtx_unlock(&u->bind_mutex);
 error = xen_intr_add_handler(device_get_nameunit(evtchn_dev),
     evtchn_filter, evtchn_interrupt, evtchn,
     INTR_TYPE_MISC | INTR_MPSAFE, evtchn->handle);
 if (error != 0) {
  xen_intr_unbind(&evtchn->handle);
  mtx_lock(&u->bind_mutex);
  RB_REMOVE(evtchn_tree, &u->evtchns, evtchn);
  mtx_unlock(&u->bind_mutex);
  free(evtchn, M_EVTCHN);
 }
 return (error);
}
