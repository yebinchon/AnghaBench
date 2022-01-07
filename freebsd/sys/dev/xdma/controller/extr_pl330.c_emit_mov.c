
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DMAMOV ;

__attribute__((used)) static uint32_t
emit_mov(uint8_t *buf, uint32_t reg, uint32_t val)
{

 buf[0] = DMAMOV;
 buf[1] = reg;
 buf[2] = val;
 buf[3] = val >> 8;
 buf[4] = val >> 16;
 buf[5] = val >> 24;

 return (6);
}
