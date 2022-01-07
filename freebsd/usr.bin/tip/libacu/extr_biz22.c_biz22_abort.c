
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int write (int ,char*,int) ;

void
biz22_abort(void)
{
 write(FD, "\02", 1);
}
