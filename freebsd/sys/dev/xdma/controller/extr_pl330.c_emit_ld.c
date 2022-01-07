
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DMALD ;

__attribute__((used)) static uint32_t
emit_ld(uint8_t *buf, uint8_t burst)
{

 buf[0] = DMALD;
 if (burst)
  buf[0] |= (1 << 1) | (1 << 0);
 else
  buf[0] |= (0 << 1) | (1 << 0);

 return (1);
}
