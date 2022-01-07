
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int dummy; } ;


 int UTIL_TO_INT (struct string_list_item const*) ;

__attribute__((used)) static int compare_by_counter(const void *a1, const void *a2)
{
 const struct string_list_item *i1 = a1, *i2 = a2;
 return UTIL_TO_INT(i2) - UTIL_TO_INT(i1);
}
