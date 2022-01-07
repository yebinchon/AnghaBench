
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int TIOCCBRK ;
 int TIOCSBRK ;
 int ioctl (int ,int ,int *) ;
 int sleep (int) ;

void
genbrk(int c)
{
 ioctl(FD, TIOCSBRK, ((void*)0));
 sleep(1);
 ioctl(FD, TIOCCBRK, ((void*)0));
}
