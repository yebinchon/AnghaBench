
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {scalar_t__ rm_start; scalar_t__ rm_type; int * rm_mtx; int rm_list; int rm_end; } ;


 int ENOMEM ;
 int MTX_DEF ;
 int M_NOWAIT ;
 int M_RMAN ;
 int M_ZERO ;
 scalar_t__ RMAN_GAUGE ;
 scalar_t__ RMAN_UNINIT ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct rman*,int ) ;
 int * malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int rm_link ;
 int rman_head ;
 int rman_mtx ;

int
rman_init(struct rman *rm)
{
 static int once = 0;

 if (once == 0) {
  once = 1;
  TAILQ_INIT(&rman_head);
  mtx_init(&rman_mtx, "rman head", ((void*)0), MTX_DEF);
 }

 if (rm->rm_start == 0 && rm->rm_end == 0)
  rm->rm_end = ~0;
 if (rm->rm_type == RMAN_UNINIT)
  panic("rman_init");
 if (rm->rm_type == RMAN_GAUGE)
  panic("implement RMAN_GAUGE");

 TAILQ_INIT(&rm->rm_list);
 rm->rm_mtx = malloc(sizeof *rm->rm_mtx, M_RMAN, M_NOWAIT | M_ZERO);
 if (rm->rm_mtx == ((void*)0))
  return ENOMEM;
 mtx_init(rm->rm_mtx, "rman", ((void*)0), MTX_DEF);

 mtx_lock(&rman_mtx);
 TAILQ_INSERT_TAIL(&rman_head, rm, rm_link);
 mtx_unlock(&rman_mtx);
 return 0;
}
