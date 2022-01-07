
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int TCIOFLUSH ;
 int sleep (int) ;
 int tcflush (int ,int ) ;
 int write (int ,char*,int) ;

void
df_disconnect(void)
{
 write(FD, "\001", 1);
 sleep(1);
 tcflush(FD, TCIOFLUSH);
}
