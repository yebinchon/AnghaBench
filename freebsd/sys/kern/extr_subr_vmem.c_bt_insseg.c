
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vm_seglist; } ;
typedef TYPE_1__ vmem_t ;
typedef int bt_t ;


 int TAILQ_INSERT_AFTER (int *,int *,int *,int ) ;
 int bt_seglist ;

__attribute__((used)) static void
bt_insseg(vmem_t *vm, bt_t *bt, bt_t *prev)
{

 TAILQ_INSERT_AFTER(&vm->vm_seglist, prev, bt, bt_seglist);
}
