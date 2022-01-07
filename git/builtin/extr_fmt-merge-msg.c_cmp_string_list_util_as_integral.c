
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int dummy; } ;


 int util_as_integral (struct string_list_item const*) ;

__attribute__((used)) static int cmp_string_list_util_as_integral(const void *a_, const void *b_)
{
 const struct string_list_item *a = a_, *b = b_;
 return util_as_integral(b) - util_as_integral(a);
}
