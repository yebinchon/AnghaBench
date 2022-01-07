
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct xs_stored_msg* vec; int vec_size; TYPE_4__* handle; } ;
struct TYPE_6__ {TYPE_1__ watch; } ;
struct xs_stored_msg {TYPE_2__ u; } ;
struct TYPE_8__ {int (* callback ) (TYPE_4__*,char const**,int ) ;} ;
struct TYPE_7__ {int xenwatch_mutex; int watch_events_lock; int watch_events; } ;


 int M_XENSTORE ;
 int PCATCH ;
 int PWAIT ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct xs_stored_msg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct xs_stored_msg*,int ) ;
 int free (struct xs_stored_msg*,int ) ;
 int hz ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_sleep (int *,int *,int,char*,int) ;
 int mtx_unlock (int *) ;
 int stub1 (TYPE_4__*,char const**,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 TYPE_3__ xs ;

__attribute__((used)) static void
xenwatch_thread(void *unused)
{
 struct xs_stored_msg *msg;

 for (;;) {

  mtx_lock(&xs.watch_events_lock);
  while (TAILQ_EMPTY(&xs.watch_events))
   mtx_sleep(&xs.watch_events,
       &xs.watch_events_lock,
       PWAIT | PCATCH, "waitev", hz/10);

  mtx_unlock(&xs.watch_events_lock);
  sx_xlock(&xs.xenwatch_mutex);

  mtx_lock(&xs.watch_events_lock);
  msg = TAILQ_FIRST(&xs.watch_events);
  if (msg)
   TAILQ_REMOVE(&xs.watch_events, msg, list);
  mtx_unlock(&xs.watch_events_lock);

  if (msg != ((void*)0)) {






   if (msg->u.watch.handle->callback != ((void*)0))
    msg->u.watch.handle->callback(
     msg->u.watch.handle,
     (const char **)msg->u.watch.vec,
     msg->u.watch.vec_size);
   free(msg->u.watch.vec, M_XENSTORE);
   free(msg, M_XENSTORE);
  }

  sx_xunlock(&xs.xenwatch_mutex);
 }
}
