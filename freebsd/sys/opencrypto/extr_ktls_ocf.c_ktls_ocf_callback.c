
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocf_operation {int done; TYPE_1__* os; } ;
struct cryptop {struct ocf_operation* crp_opaque; } ;
struct TYPE_2__ {int lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct ocf_operation*) ;

__attribute__((used)) static int
ktls_ocf_callback(struct cryptop *crp)
{
 struct ocf_operation *oo;

 oo = crp->crp_opaque;
 mtx_lock(&oo->os->lock);
 oo->done = 1;
 mtx_unlock(&oo->os->lock);
 wakeup(oo);
 return (0);
}
