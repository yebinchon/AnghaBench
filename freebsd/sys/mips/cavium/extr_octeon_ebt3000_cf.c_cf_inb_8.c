
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile uint8_t ;
typedef int uint16_t ;


 scalar_t__ CF_8 ;
 scalar_t__ base_addr ;
 scalar_t__ bus_type ;

__attribute__((used)) static uint8_t cf_inb_8(int port)
{



 if (bus_type == CF_8) {
  volatile uint8_t *task_file = (volatile uint8_t *)base_addr;
  return task_file[port];
 }




 volatile uint16_t *task_file = (volatile uint16_t *)base_addr;
 return task_file[port] & 0xff;
}
