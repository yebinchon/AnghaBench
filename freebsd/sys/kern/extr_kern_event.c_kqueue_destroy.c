
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct kqueue {int kq_sigio; int * kq_knlist; int * kq_knhash; int kq_lock; TYPE_1__ kq_sel; int * kq_fdp; } ;


 int KASSERT (int ,char*) ;
 int M_KQUEUE ;
 int free (int *,int ) ;
 int funsetown (int *) ;
 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int seldrain (TYPE_1__*) ;

__attribute__((used)) static void
kqueue_destroy(struct kqueue *kq)
{

 KASSERT(kq->kq_fdp == ((void*)0),
     ("kqueue still attached to a file descriptor"));
 seldrain(&kq->kq_sel);
 knlist_destroy(&kq->kq_sel.si_note);
 mtx_destroy(&kq->kq_lock);

 if (kq->kq_knhash != ((void*)0))
  free(kq->kq_knhash, M_KQUEUE);
 if (kq->kq_knlist != ((void*)0))
  free(kq->kq_knlist, M_KQUEUE);

 funsetown(&kq->kq_sigio);
}
