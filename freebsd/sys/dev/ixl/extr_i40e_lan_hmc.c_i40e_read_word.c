
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_context_ele {int lsb; int offset; int width; } ;
typedef int src_word ;
typedef int dest_word ;
typedef int __le16 ;


 int BIT (int ) ;
 int CPU_TO_LE16 (int) ;
 int I40E_DMA_TO_NONDMA ;
 int I40E_NONDMA_TO_DMA ;
 int LE16_TO_CPU (int) ;
 int i40e_memcpy (int*,int*,int,int ) ;

__attribute__((used)) static void i40e_read_word(u8 *hmc_bits,
      struct i40e_context_ele *ce_info,
      u8 *dest)
{
 u16 dest_word, mask;
 u8 *src, *target;
 u16 shift_width;
 __le16 src_word;


 shift_width = ce_info->lsb % 8;
 mask = BIT(ce_info->width) - 1;


 mask <<= shift_width;


 src = hmc_bits + (ce_info->lsb / 8);

 i40e_memcpy(&src_word, src, sizeof(src_word), I40E_DMA_TO_NONDMA);




 src_word &= ~(CPU_TO_LE16(mask));


 dest_word = LE16_TO_CPU(src_word);

 dest_word >>= shift_width;


 target = dest + ce_info->offset;


 i40e_memcpy(target, &dest_word, sizeof(dest_word), I40E_NONDMA_TO_DMA);
}
