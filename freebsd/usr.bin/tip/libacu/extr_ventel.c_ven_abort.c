
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int close (int ) ;
 int write (int ,char*,int) ;

void
ven_abort(void)
{
 write(FD, "\03", 1);
 close(FD);
}
