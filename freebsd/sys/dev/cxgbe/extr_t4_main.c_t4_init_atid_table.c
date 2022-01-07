
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {int natids; TYPE_1__* atid_tab; scalar_t__ atids_in_use; TYPE_1__* afree; int atid_lock; } ;
struct adapter {struct tid_info tids; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;


 int MPASS (int ) ;
 int MTX_DEF ;
 int M_CXGBE ;
 int M_WAITOK ;
 int M_ZERO ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
t4_init_atid_table(struct adapter *sc)
{
 struct tid_info *t;
 int i;

 t = &sc->tids;
 if (t->natids == 0)
  return;

 MPASS(t->atid_tab == ((void*)0));

 t->atid_tab = malloc(t->natids * sizeof(*t->atid_tab), M_CXGBE,
     M_ZERO | M_WAITOK);
 mtx_init(&t->atid_lock, "atid lock", ((void*)0), MTX_DEF);
 t->afree = t->atid_tab;
 t->atids_in_use = 0;
 for (i = 1; i < t->natids; i++)
  t->atid_tab[i - 1].next = &t->atid_tab[i];
 t->atid_tab[t->natids - 1].next = ((void*)0);
}
