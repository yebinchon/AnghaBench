
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iot_t ;


 scalar_t__ IOT_READ ;
 scalar_t__ IOT_WRITE ;
 int random () ;

__attribute__((used)) static iot_t
choose_aio(iot_t iomask)
{

 if (iomask == IOT_READ)
  return IOT_READ;
 else if (iomask == IOT_WRITE)
  return IOT_WRITE;
 return (random() & 0x01 ? IOT_READ : IOT_WRITE);
}
