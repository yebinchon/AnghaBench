
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int M_PROC ;
 int M_WAITOK ;
 int M_ZERO ;
 int SX_DUPOK ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int allproc ;
 int allproc_lock ;
 void* hashinit (int,int ,int*) ;
 int * malloc (int,int ,int) ;
 int maxproc ;
 int mtx_init (int *,char*,int *,int ) ;
 int pgrphash ;
 void* pgrphashtbl ;
 int pidhash ;
 int pidhashlock ;
 void* pidhashtbl ;
 int * pidhashtbl_lock ;
 int ppeers_lock ;
 int proc_ctor ;
 int proc_dtor ;
 int proc_fini ;
 int proc_init ;
 int proc_zone ;
 int procid_lock ;
 int proctree_lock ;
 int sched_sizeof_proc () ;
 int sx_init (int *,char*) ;
 int sx_init_flags (int *,char*,int ) ;
 int uihashinit () ;
 int uma_zcreate (char*,int ,int ,int ,int ,int ,int ,int ) ;

void
procinit(void)
{
 u_long i;

 sx_init(&allproc_lock, "allproc");
 sx_init(&proctree_lock, "proctree");
 mtx_init(&ppeers_lock, "p_peers", ((void*)0), MTX_DEF);
 mtx_init(&procid_lock, "procid", ((void*)0), MTX_DEF);
 LIST_INIT(&allproc);
 pidhashtbl = hashinit(maxproc / 4, M_PROC, &pidhash);
 pidhashlock = (pidhash + 1) / 64;
 if (pidhashlock > 0)
  pidhashlock--;
 pidhashtbl_lock = malloc(sizeof(*pidhashtbl_lock) * (pidhashlock + 1),
     M_PROC, M_WAITOK | M_ZERO);
 for (i = 0; i < pidhashlock + 1; i++)
  sx_init_flags(&pidhashtbl_lock[i], "pidhash", SX_DUPOK);
 pgrphashtbl = hashinit(maxproc / 4, M_PROC, &pgrphash);
 proc_zone = uma_zcreate("PROC", sched_sizeof_proc(),
     proc_ctor, proc_dtor, proc_init, proc_fini,
     UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
 uihashinit();
}
