
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; struct push_info* util; } ;
struct push_info {int dest; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmp_string_with_push(const void *va, const void *vb)
{
 const struct string_list_item *a = va;
 const struct string_list_item *b = vb;
 const struct push_info *a_push = a->util;
 const struct push_info *b_push = b->util;
 int cmp = strcmp(a->string, b->string);
 return cmp ? cmp : strcmp(a_push->dest, b_push->dest);
}
