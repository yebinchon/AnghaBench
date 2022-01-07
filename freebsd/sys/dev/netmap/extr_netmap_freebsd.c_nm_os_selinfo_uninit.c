
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct TYPE_5__ {int m; TYPE_1__ si; int * ntfytq; int ntfytask; } ;
typedef TYPE_2__ NM_SELINFO_T ;


 int curthread ;
 int knlist_delete (int *,int ,int ) ;
 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

void
nm_os_selinfo_uninit(NM_SELINFO_T *si)
{
 if (si->ntfytq == ((void*)0)) {
  return;
 }
 taskqueue_drain(si->ntfytq, &si->ntfytask);
 taskqueue_free(si->ntfytq);
 si->ntfytq = ((void*)0);
 knlist_delete(&si->si.si_note, curthread, 0);
 knlist_destroy(&si->si.si_note);

 mtx_destroy(&si->m);
}
