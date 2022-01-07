
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct adapter {int dummy; } ;


 int t3_read_reg (struct adapter*,unsigned int) ;

__attribute__((used)) static __inline void
reg_block_dump(struct adapter *ap, uint8_t *buf, unsigned int start,
    unsigned int end)
{
 uint32_t *p = (uint32_t *)(buf + start);

 for ( ; start <= end; start += sizeof(uint32_t))
  *p++ = t3_read_reg(ap, start);
}
