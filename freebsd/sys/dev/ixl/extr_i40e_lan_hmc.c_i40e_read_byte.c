
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_context_ele {int lsb; int offset; int width; } ;
typedef int dest_byte ;


 int BIT (int ) ;
 int I40E_DMA_TO_NONDMA ;
 int I40E_NONDMA_TO_DMA ;
 int i40e_memcpy (int*,int*,int,int ) ;

__attribute__((used)) static void i40e_read_byte(u8 *hmc_bits,
      struct i40e_context_ele *ce_info,
      u8 *dest)
{
 u8 dest_byte, mask;
 u8 *src, *target;
 u16 shift_width;


 shift_width = ce_info->lsb % 8;
 mask = (u8)(BIT(ce_info->width) - 1);


 mask <<= shift_width;


 src = hmc_bits + (ce_info->lsb / 8);

 i40e_memcpy(&dest_byte, src, sizeof(dest_byte), I40E_DMA_TO_NONDMA);

 dest_byte &= ~(mask);

 dest_byte >>= shift_width;


 target = dest + ce_info->offset;


 i40e_memcpy(target, &dest_byte, sizeof(dest_byte), I40E_NONDMA_TO_DMA);
}
