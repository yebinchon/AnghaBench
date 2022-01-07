
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryptop_data {int done; TYPE_1__* cse; } ;
struct cryptop {struct cryptop_data* crp_opaque; } ;
struct TYPE_2__ {int lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct cryptop_data*) ;

__attribute__((used)) static int
cryptodev_cb(struct cryptop *crp)
{
 struct cryptop_data *cod = crp->crp_opaque;






 mtx_lock(&cod->cse->lock);
 cod->done = 1;
 mtx_unlock(&cod->cse->lock);
 wakeup(cod);
 return (0);
}
