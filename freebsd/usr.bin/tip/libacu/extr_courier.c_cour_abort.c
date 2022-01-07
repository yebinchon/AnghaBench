
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int cour_disconnect () ;
 int cour_write (int ,char*,int) ;

void
cour_abort(void)
{
 cour_write(FD, "\r", 1);
 cour_disconnect();
}
