
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; } ;
struct ib_conn {int lock; TYPE_1__ fastreg; } ;
struct fast_reg_descriptor {int list; } ;


 int list_add (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
iser_reg_desc_put(struct ib_conn *ib_conn,
    struct fast_reg_descriptor *desc)
{
 mtx_lock(&ib_conn->lock);
 list_add(&desc->list, &ib_conn->fastreg.pool);
 mtx_unlock(&ib_conn->lock);
}
