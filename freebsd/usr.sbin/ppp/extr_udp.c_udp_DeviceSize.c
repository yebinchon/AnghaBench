
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udpdevice {int dummy; } ;



unsigned
udp_DeviceSize(void)
{
  return sizeof(struct udpdevice);
}
