
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VISIOCTLOPEN ;
 int dev ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int printf (char*) ;

__attribute__((used)) static void
toggle_medium(int op)
{
 if (ioctl(dev, VISIOCTLOPEN, &op) < 0) {
  printf("error opening/closing medium\n");
 }
}
