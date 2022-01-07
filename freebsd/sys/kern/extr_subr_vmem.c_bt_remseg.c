
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int vm_seglist; } ;
typedef TYPE_1__ vmem_t ;
struct TYPE_9__ {scalar_t__ bt_type; } ;
typedef TYPE_2__ bt_t ;


 scalar_t__ BT_TYPE_CURSOR ;
 int MPASS (int) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int bt_free (TYPE_1__*,TYPE_2__*) ;
 int bt_seglist ;

__attribute__((used)) static void
bt_remseg(vmem_t *vm, bt_t *bt)
{

 MPASS(bt->bt_type != BT_TYPE_CURSOR);
 TAILQ_REMOVE(&vm->vm_seglist, bt, bt_seglist);
 bt_free(vm, bt);
}
