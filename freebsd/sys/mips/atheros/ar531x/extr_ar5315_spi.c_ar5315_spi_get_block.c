
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int off_t ;
typedef scalar_t__ caddr_t ;


 int AR5315_MEM1_BASE ;
 int ATH_READ_REG (int) ;

__attribute__((used)) static int
ar5315_spi_get_block(off_t offset, caddr_t data, off_t count)
{
 int i;
 for(i = 0; i < count / 4; ++i) {
  *((uint32_t *)data + i) = ATH_READ_REG(AR5315_MEM1_BASE + offset + i * 4);
 }


 return (0);
}
