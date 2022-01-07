
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vmem_t ;
struct TYPE_4__ {scalar_t__ bt_type; } ;
typedef TYPE_1__ bt_t ;


 scalar_t__ BT_TYPE_FREE ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int MPASS (int) ;
 int bt_freelist ;

__attribute__((used)) static void
bt_remfree(vmem_t *vm, bt_t *bt)
{

 MPASS(bt->bt_type == BT_TYPE_FREE);

 LIST_REMOVE(bt, bt_freelist);
}
