
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct tty {struct cdev* t_dev; } ;
struct TYPE_3__ {struct tty* np_tty; struct TYPE_3__* np_other; int np_callout; int np_task; struct nmdmsoftc* np_pair; } ;
struct nmdmsoftc {TYPE_1__ ns_part2; TYPE_1__ ns_part1; int ns_mtx; } ;
struct cdev {int dummy; } ;


 int MTX_DEF ;
 int M_NMDM ;
 int M_WAITOK ;
 int M_ZERO ;
 int TASK_INIT (int *,int ,int ,TYPE_1__*) ;
 int TTYMK_CLONING ;
 int atomic_add_int (int *,int) ;
 int callout_init_mtx (int *,int *,int ) ;
 int free (struct nmdmsoftc*,int ) ;
 struct nmdmsoftc* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int nmdm_class ;
 int nmdm_count ;
 int nmdm_task_tty ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 void* tty_alloc_mutex (int *,TYPE_1__*,int *) ;
 int tty_makedevf (struct tty*,int *,int ,char*,char*) ;
 int tty_rel_gone (struct tty*) ;

__attribute__((used)) static void
nmdm_clone(void *arg, struct ucred *cred, char *name, int nameen,
    struct cdev **dev)
{
 struct nmdmsoftc *ns;
 struct tty *tp;
 char *end;
 int error;
 char endc;

 if (*dev != ((void*)0))
  return;
 if (strncmp(name, "nmdm", 4) != 0)
  return;
 if (strlen(name) <= strlen("nmdmX"))
  return;


 end = name + strlen(name) - 1;
 endc = *end;
 if (endc != 'A' && endc != 'B')
  return;

 ns = malloc(sizeof(*ns), M_NMDM, M_WAITOK | M_ZERO);
 mtx_init(&ns->ns_mtx, "nmdm", ((void*)0), MTX_DEF);


 ns->ns_part1.np_pair = ns;
 ns->ns_part1.np_other = &ns->ns_part2;
 TASK_INIT(&ns->ns_part1.np_task, 0, nmdm_task_tty, &ns->ns_part1);
 callout_init_mtx(&ns->ns_part1.np_callout, &ns->ns_mtx, 0);

 ns->ns_part2.np_pair = ns;
 ns->ns_part2.np_other = &ns->ns_part1;
 TASK_INIT(&ns->ns_part2.np_task, 0, nmdm_task_tty, &ns->ns_part2);
 callout_init_mtx(&ns->ns_part2.np_callout, &ns->ns_mtx, 0);


 tp = ns->ns_part1.np_tty = tty_alloc_mutex(&nmdm_class, &ns->ns_part1,
     &ns->ns_mtx);
 *end = 'A';
 error = tty_makedevf(tp, ((void*)0), endc == 'A' ? TTYMK_CLONING : 0,
     "%s", name);
 if (error) {
  *end = endc;
  mtx_destroy(&ns->ns_mtx);
  free(ns, M_NMDM);
  return;
 }

 tp = ns->ns_part2.np_tty = tty_alloc_mutex(&nmdm_class, &ns->ns_part2,
     &ns->ns_mtx);
 *end = 'B';
 error = tty_makedevf(tp, ((void*)0), endc == 'B' ? TTYMK_CLONING : 0,
     "%s", name);
 if (error) {
  *end = endc;
  mtx_lock(&ns->ns_mtx);

  ns->ns_part1.np_other = ((void*)0);
  atomic_add_int(&nmdm_count, 1);
  tty_rel_gone(ns->ns_part1.np_tty);
  return;
 }

 if (endc == 'A')
  *dev = ns->ns_part1.np_tty->t_dev;
 else
  *dev = ns->ns_part2.np_tty->t_dev;

 *end = endc;
 atomic_add_int(&nmdm_count, 1);
}
