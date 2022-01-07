
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int buddy_got; } ;


 int read_buddy_data (struct params*) ;
 int read_buddy_head (struct params*) ;

void read_buddy(struct params *p)
{
 if (p->buddy_got < 4)
  read_buddy_head(p);
 else
  read_buddy_data(p);
}
