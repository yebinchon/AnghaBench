
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execdevice {int dummy; } ;



unsigned
exec_DeviceSize(void)
{
  return sizeof(struct execdevice);
}
