
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapdata {int sn_lock; int sn_head; } ;


 struct snapdata* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct snapdata*,int ) ;
 int LK_CANRECURSE ;
 int LK_NOSHARE ;
 int M_UFSMNT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PVFS ;
 int TAILQ_INIT (int *) ;
 int VLKTIMEOUT ;
 int lockinit (int *,int ,char*,int ,int) ;
 struct snapdata* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sn_link ;
 int snapfree ;
 int snapfree_lock ;

__attribute__((used)) static struct snapdata *
ffs_snapdata_alloc(void)
{
 struct snapdata *sn;




 mtx_lock(&snapfree_lock);
 sn = LIST_FIRST(&snapfree);
 if (sn != ((void*)0))
  LIST_REMOVE(sn, sn_link);
 mtx_unlock(&snapfree_lock);
 if (sn != ((void*)0))
  return (sn);



 sn = malloc(sizeof *sn, M_UFSMNT, M_WAITOK | M_ZERO);
 TAILQ_INIT(&sn->sn_head);
 lockinit(&sn->sn_lock, PVFS, "snaplk", VLKTIMEOUT,
     LK_CANRECURSE | LK_NOSHARE);
 return (sn);
}
