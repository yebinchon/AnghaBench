
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smt_data {int smt_size; int lock; TYPE_1__* smtab; } ;
struct TYPE_2__ {int lock; } ;


 int M_CXGBE ;
 int free (struct smt_data*,int ) ;
 int mtx_destroy (int *) ;
 int rw_destroy (int *) ;

int
t4_free_smt(struct smt_data *s)
{
 int i;

 for (i = 0; i < s->smt_size; i++)
  mtx_destroy(&s->smtab[i].lock);
 rw_destroy(&s->lock);
 free(s, M_CXGBE);

 return (0);
}
