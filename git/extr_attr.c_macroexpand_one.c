
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct all_attrs_item {scalar_t__ value; scalar_t__ macro; } ;


 scalar_t__ ATTR__TRUE ;
 int fill_one (char*,struct all_attrs_item*,scalar_t__,int) ;

__attribute__((used)) static int macroexpand_one(struct all_attrs_item *all_attrs, int nr, int rem)
{
 const struct all_attrs_item *item = &all_attrs[nr];

 if (item->macro && item->value == ATTR__TRUE)
  return fill_one("expand", all_attrs, item->macro, rem);
 else
  return rem;
}
