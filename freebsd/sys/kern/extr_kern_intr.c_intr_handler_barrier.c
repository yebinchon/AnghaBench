
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_handler {int ih_flags; struct intr_event* ih_event; } ;
struct intr_event {int ie_lock; int * ie_thread; } ;


 int IH_CHANGED ;
 int IH_DEAD ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int intr_event_barrier (struct intr_event*) ;
 int intr_event_schedule_thread (struct intr_event*) ;
 int msleep (struct intr_handler*,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
intr_handler_barrier(struct intr_handler *handler)
{
 struct intr_event *ie;

 ie = handler->ih_event;
 mtx_assert(&ie->ie_lock, MA_OWNED);
 KASSERT((handler->ih_flags & IH_DEAD) == 0,
     ("update for a removed handler"));

 if (ie->ie_thread == ((void*)0)) {
  intr_event_barrier(ie);
  return;
 }
 if ((handler->ih_flags & IH_CHANGED) == 0) {
  handler->ih_flags |= IH_CHANGED;
  intr_event_schedule_thread(ie);
 }
 while ((handler->ih_flags & IH_CHANGED) != 0)
  msleep(handler, &ie->ie_lock, 0, "ih_barr", 0);
}
