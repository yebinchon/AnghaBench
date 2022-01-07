
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_charmap_impl (char const*,int,int) ;

void
add_charmap(const char *sym, int c)
{
 add_charmap_impl(sym, c, 1);
}
