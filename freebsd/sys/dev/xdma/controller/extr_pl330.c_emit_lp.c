
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DMALP ;

__attribute__((used)) static uint32_t
emit_lp(uint8_t *buf, uint8_t idx, uint32_t iter)
{

 if (idx > 1)
  return (0);

 buf[0] = DMALP;
 buf[0] |= (idx << 1);
 buf[1] = (iter - 1) & 0xff;

 return (2);
}
