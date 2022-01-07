
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ base_addr ;

__attribute__((used)) static void cf_outw_16(int port, uint16_t val)
{
 volatile uint16_t *task_file = (volatile uint16_t *)base_addr;
 task_file[port / 2] = val;
}
