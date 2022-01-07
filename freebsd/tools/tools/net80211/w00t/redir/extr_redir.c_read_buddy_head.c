
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int buddy_got; } ;


 int buddy_get (struct params*,int) ;

void read_buddy_head(struct params *p)
{
 int rem;

 rem = 4 - p->buddy_got;

 if (!buddy_get(p, rem))
  return;
}
