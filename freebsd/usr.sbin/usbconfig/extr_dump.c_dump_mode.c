
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ LIBUSB20_MODE_HOST ;

const char *
dump_mode(uint8_t value)
{
 if (value == LIBUSB20_MODE_HOST)
  return ("HOST");
 return ("DEVICE");
}
