
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 scalar_t__ base_addr ;

__attribute__((used)) static uint8_t cf_inb_16(int port)
{
 volatile uint16_t *task_file = (volatile uint16_t *)base_addr;
 uint16_t val = task_file[port / 2];
 if (port & 1)
  return (val >> 8) & 0xff;
 return val & 0xff;
}
