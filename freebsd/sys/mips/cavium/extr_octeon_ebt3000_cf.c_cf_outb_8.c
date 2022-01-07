
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 scalar_t__ CF_8 ;
 scalar_t__ base_addr ;
 scalar_t__ bus_type ;

__attribute__((used)) static void cf_outb_8(int port, uint8_t val)
{



 if (bus_type == CF_8) {
  volatile uint8_t *task_file = (volatile uint8_t *)base_addr;
  task_file[port] = val;
  return;
 }




 volatile uint16_t *task_file = (volatile uint16_t *)base_addr;
 task_file[port] = val & 0xff;
}
