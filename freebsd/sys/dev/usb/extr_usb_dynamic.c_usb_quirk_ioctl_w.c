
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int caddr_t ;


 int ENOIOCTL ;

__attribute__((used)) static int
usb_quirk_ioctl_w(unsigned long cmd, caddr_t data, int fflag, struct thread *td)
{
 return (ENOIOCTL);
}
