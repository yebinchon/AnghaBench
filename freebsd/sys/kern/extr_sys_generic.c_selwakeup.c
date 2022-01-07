
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinfo {int dummy; } ;


 int doselwakeup (struct selinfo*,int) ;

void
selwakeup(struct selinfo *sip)
{
 doselwakeup(sip, -1);
}
