
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_event {int ie_lock; int * ie_thread; int ie_handlers; } ;


 int CK_SLIST_EMPTY (int *) ;
 int EBUSY ;
 int M_ITHREAD ;
 int TAILQ_REMOVE (int *,struct intr_event*,int ) ;
 int event_list ;
 int event_lock ;
 int free (struct intr_event*,int ) ;
 int ie_list ;
 int ithread_destroy (int *) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
intr_event_destroy(struct intr_event *ie)
{

 mtx_lock(&event_lock);
 mtx_lock(&ie->ie_lock);
 if (!CK_SLIST_EMPTY(&ie->ie_handlers)) {
  mtx_unlock(&ie->ie_lock);
  mtx_unlock(&event_lock);
  return (EBUSY);
 }
 TAILQ_REMOVE(&event_list, ie, ie_list);

 if (ie->ie_thread != ((void*)0)) {
  ithread_destroy(ie->ie_thread);
  ie->ie_thread = ((void*)0);
 }

 mtx_unlock(&ie->ie_lock);
 mtx_unlock(&event_lock);
 mtx_destroy(&ie->ie_lock);
 free(ie, M_ITHREAD);
 return (0);
}
