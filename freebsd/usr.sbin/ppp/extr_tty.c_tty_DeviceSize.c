
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttydevice {int dummy; } ;



unsigned
tty_DeviceSize(void)
{
  return sizeof(struct ttydevice);
}
