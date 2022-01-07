
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngdevice {int dummy; } ;



unsigned
ng_DeviceSize(void)
{
  return sizeof(struct ngdevice);
}
