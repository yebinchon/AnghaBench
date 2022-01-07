
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {int bd_run_lock; int * bd_subq; int bd_dirtyq; int * bd_cleanq; } ;


 int MTX_DEF ;
 int QUEUE_CLEAN ;
 int QUEUE_DIRTY ;
 int bq_init (int *,int ,int,char*) ;
 int mp_maxid ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
bd_init(struct bufdomain *bd)
{
 int i;

 bd->bd_cleanq = &bd->bd_subq[mp_maxid + 1];
 bq_init(bd->bd_cleanq, QUEUE_CLEAN, mp_maxid + 1, "bufq clean lock");
 bq_init(&bd->bd_dirtyq, QUEUE_DIRTY, -1, "bufq dirty lock");
 for (i = 0; i <= mp_maxid; i++)
  bq_init(&bd->bd_subq[i], QUEUE_CLEAN, i,
      "bufq clean subqueue lock");
 mtx_init(&bd->bd_run_lock, "bufspace daemon run lock", ((void*)0), MTX_DEF);
}
