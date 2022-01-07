
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_context_ele {int lsb; int width; int offset; } ;
typedef int src_dword ;
typedef int dest_dword ;
typedef int __le32 ;


 int BIT (int) ;
 int CPU_TO_LE32 (int) ;
 int I40E_DMA_TO_NONDMA ;
 int I40E_NONDMA_TO_DMA ;
 int LE32_TO_CPU (int) ;
 int i40e_memcpy (int*,int*,int,int ) ;

__attribute__((used)) static void i40e_read_dword(u8 *hmc_bits,
       struct i40e_context_ele *ce_info,
       u8 *dest)
{
 u32 dest_dword, mask;
 u8 *src, *target;
 u16 shift_width;
 __le32 src_dword;


 shift_width = ce_info->lsb % 8;





 if (ce_info->width < 32)
  mask = BIT(ce_info->width) - 1;
 else
  mask = ~(u32)0;


 mask <<= shift_width;


 src = hmc_bits + (ce_info->lsb / 8);

 i40e_memcpy(&src_dword, src, sizeof(src_dword), I40E_DMA_TO_NONDMA);




 src_dword &= ~(CPU_TO_LE32(mask));


 dest_dword = LE32_TO_CPU(src_dword);

 dest_dword >>= shift_width;


 target = dest + ce_info->offset;


 i40e_memcpy(target, &dest_dword, sizeof(dest_dword),
      I40E_NONDMA_TO_DMA);
}
