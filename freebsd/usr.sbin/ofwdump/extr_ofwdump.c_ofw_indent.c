
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;

__attribute__((used)) static void
ofw_indent(int level)
{
 int i;

 for (i = 0; i < level; i++)
  putchar(' ');
}
