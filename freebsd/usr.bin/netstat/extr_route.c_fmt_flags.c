
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bits {int b_mask; int b_val; } ;


 struct bits* bits ;

__attribute__((used)) static const char *
fmt_flags(int f)
{
 static char name[33];
 char *flags;
 struct bits *p = bits;

 for (flags = name; p->b_mask; p++)
  if (p->b_mask & f)
   *flags++ = p->b_val;
 *flags = '\0';
 return (name);
}
