
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int M_DQUOT ;
 int TAILQ_INIT (int *) ;
 int desiredvnodes ;
 int dqfreelist ;
 int dqhash ;
 int dqhashtbl ;
 int dqhlock ;
 int hashinit (int ,int ,int *) ;
 int mtx_init (int *,char*,int *,int ) ;

void
dqinit(void)
{

 mtx_init(&dqhlock, "dqhlock", ((void*)0), MTX_DEF);
 dqhashtbl = hashinit(desiredvnodes, M_DQUOT, &dqhash);
 TAILQ_INIT(&dqfreelist);
}
