
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_entry {int lock; int state; int refcnt; } ;


 int MPASS (int ) ;
 int SMT_STATE_UNUSED ;
 int atomic_fetchadd_int (int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static inline void
t4_smt_release(struct smt_entry *e)
{
 MPASS(e != ((void*)0));
 if (atomic_fetchadd_int(&e->refcnt, -1) == 1) {
  mtx_lock(&e->lock);
  e->state = SMT_STATE_UNUSED;
  mtx_unlock(&e->lock);
 }

}
