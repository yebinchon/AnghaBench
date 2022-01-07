
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {scalar_t__ buddy_got; } ;


 int connect_buddy (struct params*) ;
 int err (int,char*) ;

void buddy_reset(struct params *p)
{
 p->buddy_got = 0;

 if (connect_buddy(p) == -1)
  err(1, "connect_buddy()");
}
