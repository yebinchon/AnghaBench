
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vmem_t ;
struct vmem_freelist {int dummy; } ;
struct TYPE_4__ {int bt_size; } ;
typedef TYPE_1__ bt_t ;


 int LIST_INSERT_HEAD (struct vmem_freelist*,TYPE_1__*,int ) ;
 struct vmem_freelist* bt_freehead_tofree (int *,int ) ;
 int bt_freelist ;

__attribute__((used)) static void
bt_insfree(vmem_t *vm, bt_t *bt)
{
 struct vmem_freelist *list;

 list = bt_freehead_tofree(vm, bt->bt_size);
 LIST_INSERT_HEAD(list, bt, bt_freelist);
}
