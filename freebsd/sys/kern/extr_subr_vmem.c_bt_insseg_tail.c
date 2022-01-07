
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vm_seglist; } ;
typedef TYPE_1__ vmem_t ;
typedef int bt_t ;


 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int bt_seglist ;

__attribute__((used)) static void
bt_insseg_tail(vmem_t *vm, bt_t *bt)
{

 TAILQ_INSERT_TAIL(&vm->vm_seglist, bt, bt_seglist);
}
