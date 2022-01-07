
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_entry {int idx; int refcnt; int lock; int state; } ;
struct smt_data {int smt_size; struct smt_entry* smtab; int lock; } ;
struct adapter {struct smt_data* smt; } ;


 int ENOMEM ;
 int MTX_DEF ;
 int M_CXGBE ;
 int M_ZERO ;
 int SMT_SIZE ;
 int SMT_STATE_UNUSED ;
 int atomic_store_rel_int (int *,int ) ;
 struct smt_data* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rw_init (int *,char*) ;

int
t4_init_smt(struct adapter *sc, int flags)
{
 int i, smt_size;
 struct smt_data *s;

 smt_size = SMT_SIZE;
 s = malloc(sizeof(*s) + smt_size * sizeof (struct smt_entry), M_CXGBE,
     M_ZERO | flags);
 if (!s)
  return (ENOMEM);

 s->smt_size = smt_size;
 rw_init(&s->lock, "SMT");

 for (i = 0; i < smt_size; i++) {
  struct smt_entry *e = &s->smtab[i];

  e->idx = i;
  e->state = SMT_STATE_UNUSED;
  mtx_init(&e->lock, "SMT_E", ((void*)0), MTX_DEF);
  atomic_store_rel_int(&e->refcnt, 0);
 }

 sc->smt = s;

 return (0);
}
