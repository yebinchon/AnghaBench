
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int si_note; } ;
struct TYPE_6__ {scalar_t__ kqueue_users; int m; TYPE_1__ si; int mtxname; int * ntfytq; int ntfytask; } ;
typedef TYPE_2__ NM_SELINFO_T ;


 int ENOMEM ;
 int MTX_DEF ;
 int M_NOWAIT ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,TYPE_2__*) ;
 int knlist_init_mtx (int *,int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int nm_kqueue_notify ;
 int snprintf (int ,int,char*,char const*) ;
 int * taskqueue_create (char const*,int ,int ,int **) ;
 int taskqueue_free (int *) ;
 int taskqueue_start_threads (int **,int,int ,char*,char const*) ;
 int taskqueue_thread_enqueue ;

int nm_os_selinfo_init(NM_SELINFO_T *si, const char *name) {
 int err;

 TASK_INIT(&si->ntfytask, 0, nm_kqueue_notify, si);
 si->ntfytq = taskqueue_create(name, M_NOWAIT,
     taskqueue_thread_enqueue, &si->ntfytq);
 if (si->ntfytq == ((void*)0))
  return -ENOMEM;
 err = taskqueue_start_threads(&si->ntfytq, 1, PI_NET, "tq %s", name);
 if (err) {
  taskqueue_free(si->ntfytq);
  si->ntfytq = ((void*)0);
  return err;
 }

 snprintf(si->mtxname, sizeof(si->mtxname), "nmkl%s", name);
 mtx_init(&si->m, si->mtxname, ((void*)0), MTX_DEF);
 knlist_init_mtx(&si->si.si_note, &si->m);
 si->kqueue_users = 0;

 return (0);
}
