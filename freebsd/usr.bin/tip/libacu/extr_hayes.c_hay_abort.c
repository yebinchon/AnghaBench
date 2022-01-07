
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int hay_disconnect () ;
 int write (int ,char*,int) ;

void
hay_abort(void)
{
 write(FD, "\r", 1);
 hay_disconnect();
}
