
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct l2t_entry {int idx; int refcnt; int wr_list; int lock; int state; } ;
struct l2t_data {int l2t_size; struct l2t_entry* l2tab; int lock; int nfree; struct l2t_entry* rover; } ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ l2t; } ;
struct adapter {struct l2t_data* l2t; TYPE_2__ vres; } ;


 int EINVAL ;
 int ENOMEM ;
 int L2T_STATE_UNUSED ;
 int MTX_DEF ;
 int M_CXGBE ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int atomic_store_rel_int (int *,int) ;
 struct l2t_data* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rw_init (int *,char*) ;

int
t4_init_l2t(struct adapter *sc, int flags)
{
 int i, l2t_size;
 struct l2t_data *d;

 l2t_size = sc->vres.l2t.size;
 if (l2t_size < 2)
  return (EINVAL);

 d = malloc(sizeof(*d) + l2t_size * sizeof (struct l2t_entry), M_CXGBE,
     M_ZERO | flags);
 if (!d)
  return (ENOMEM);

 d->l2t_size = l2t_size;
 d->rover = d->l2tab;
 atomic_store_rel_int(&d->nfree, l2t_size);
 rw_init(&d->lock, "L2T");

 for (i = 0; i < l2t_size; i++) {
  struct l2t_entry *e = &d->l2tab[i];

  e->idx = i;
  e->state = L2T_STATE_UNUSED;
  mtx_init(&e->lock, "L2T_E", ((void*)0), MTX_DEF);
  STAILQ_INIT(&e->wr_list);
  atomic_store_rel_int(&e->refcnt, 0);
 }

 sc->l2t = d;

 return (0);
}
