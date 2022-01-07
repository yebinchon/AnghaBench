
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int console_bitmask ;

int
lio_console_debug_enabled(uint32_t console)
{

 return (console_bitmask >> (console)) & 0x1;
}
