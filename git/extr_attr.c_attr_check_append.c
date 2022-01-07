
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_attr {int dummy; } ;
struct attr_check_item {struct git_attr const* attr; } ;
struct attr_check {scalar_t__ nr; struct attr_check_item* items; int alloc; } ;


 int ALLOC_GROW (struct attr_check_item*,scalar_t__,int ) ;

struct attr_check_item *attr_check_append(struct attr_check *check,
       const struct git_attr *attr)
{
 struct attr_check_item *item;

 ALLOC_GROW(check->items, check->nr + 1, check->alloc);
 item = &check->items[check->nr++];
 item->attr = attr;
 return item;
}
