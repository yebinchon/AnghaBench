
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int dummy; } ;



void
init_printer(struct printer *pp)
{
 static struct printer zero;
 *pp = zero;
}
