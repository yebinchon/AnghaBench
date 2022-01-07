
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int TIOCNXCL ;
 int ioctl (int ,int ,int ) ;

void
unexcl()
{
 ioctl(FD, TIOCNXCL, 0);
}
