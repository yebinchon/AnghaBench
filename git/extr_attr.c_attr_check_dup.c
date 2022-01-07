
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check {int nr; int items; int alloc; } ;


 int ALLOC_ARRAY (int ,int ) ;
 int COPY_ARRAY (int ,int ,int ) ;
 struct attr_check* attr_check_alloc () ;

struct attr_check *attr_check_dup(const struct attr_check *check)
{
 struct attr_check *ret;

 if (!check)
  return ((void*)0);

 ret = attr_check_alloc();

 ret->nr = check->nr;
 ret->alloc = check->alloc;
 ALLOC_ARRAY(ret->items, ret->nr);
 COPY_ARRAY(ret->items, check->items, ret->nr);

 return ret;
}
