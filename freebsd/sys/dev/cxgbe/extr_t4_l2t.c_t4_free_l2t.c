
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2t_data {int l2t_size; int lock; TYPE_1__* l2tab; } ;
struct TYPE_2__ {int lock; } ;


 int M_CXGBE ;
 int free (struct l2t_data*,int ) ;
 int mtx_destroy (int *) ;
 int rw_destroy (int *) ;

int
t4_free_l2t(struct l2t_data *d)
{
 int i;

 for (i = 0; i < d->l2t_size; i++)
  mtx_destroy(&d->l2tab[i].lock);
 rw_destroy(&d->lock);
 free(d, M_CXGBE);

 return (0);
}
