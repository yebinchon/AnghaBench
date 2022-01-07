
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check {int stack; scalar_t__ all_attrs_nr; int all_attrs; scalar_t__ nr; scalar_t__ alloc; int items; } ;


 int FREE_AND_NULL (int ) ;
 int drop_attr_stack (int *) ;

void attr_check_clear(struct attr_check *check)
{
 FREE_AND_NULL(check->items);
 check->alloc = 0;
 check->nr = 0;

 FREE_AND_NULL(check->all_attrs);
 check->all_attrs_nr = 0;

 drop_attr_stack(&check->stack);
}
