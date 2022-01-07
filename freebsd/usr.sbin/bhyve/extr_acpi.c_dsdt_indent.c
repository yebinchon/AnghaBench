
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ dsdt_indent_level ;

void
dsdt_indent(int levels)
{

 dsdt_indent_level += levels;
 assert(dsdt_indent_level >= 0);
}
