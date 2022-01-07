
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_charmap_impl (char const*,int,int ) ;

void
add_charmap_char(const char *name, int val)
{
 add_charmap_impl(name, val, 0);
}
