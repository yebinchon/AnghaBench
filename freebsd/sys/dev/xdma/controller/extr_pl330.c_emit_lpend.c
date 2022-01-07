
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DMALPEND ;
 int DMALPEND_NF ;

__attribute__((used)) static uint32_t
emit_lpend(uint8_t *buf, uint8_t idx,
    uint8_t burst, uint8_t jump_addr_relative)
{

 buf[0] = DMALPEND;
 buf[0] |= DMALPEND_NF;
 buf[0] |= (idx << 2);
 if (burst)
  buf[0] |= (1 << 1) | (1 << 0);
 else
  buf[0] |= (0 << 1) | (1 << 0);
 buf[1] = jump_addr_relative;

 return (2);
}
