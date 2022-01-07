
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_lock; } ;


 int M_DQUOT ;
 struct dquot* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct dquot*,int ) ;
 int dq_freelist ;
 int dqfreelist ;
 int dqhash ;
 int dqhashtbl ;
 int dqhlock ;
 int free (struct dquot*,int ) ;
 int hashdestroy (int ,int ,int ) ;
 int mtx_destroy (int *) ;

void
dquninit(void)
{
 struct dquot *dq;

 hashdestroy(dqhashtbl, M_DQUOT, dqhash);
 while ((dq = TAILQ_FIRST(&dqfreelist)) != ((void*)0)) {
  TAILQ_REMOVE(&dqfreelist, dq, dq_freelist);
  mtx_destroy(&dq->dq_lock);
  free(dq, M_DQUOT);
 }
 mtx_destroy(&dqhlock);
}
