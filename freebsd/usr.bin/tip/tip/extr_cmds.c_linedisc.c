
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int LINEDISC ;
 int TIOCSETD ;
 int ioctl (int ,int ,int*) ;
 scalar_t__ value (int ) ;

void
linedisc(char *option)
{
 int ld = (int)(intptr_t)value(LINEDISC);

 ioctl(FD, TIOCSETD, &ld);
}
