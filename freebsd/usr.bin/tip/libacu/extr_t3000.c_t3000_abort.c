
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int t3000_disconnect () ;
 int t3000_write (int ,char*,int) ;

void
t3000_abort(void)
{
 t3000_write(FD, "\r", 1);
 t3000_disconnect();
}
