
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_context_ele {int offset; int lsb; int width; } ;
typedef int dest_dword ;
typedef int __le32 ;


 int BIT (int) ;
 int CPU_TO_LE32 (int) ;
 int I40E_DMA_TO_NONDMA ;
 int I40E_NONDMA_TO_DMA ;
 int i40e_memcpy (int *,int *,int,int ) ;

__attribute__((used)) static void i40e_write_dword(u8 *hmc_bits,
        struct i40e_context_ele *ce_info,
        u8 *src)
{
 u32 src_dword, mask;
 u8 *from, *dest;
 u16 shift_width;
 __le32 dest_dword;


 from = src + ce_info->offset;


 shift_width = ce_info->lsb % 8;





 if (ce_info->width < 32)
  mask = BIT(ce_info->width) - 1;
 else
  mask = ~(u32)0;




 src_dword = *(u32 *)from;
 src_dword &= mask;


 mask <<= shift_width;
 src_dword <<= shift_width;


 dest = hmc_bits + (ce_info->lsb / 8);

 i40e_memcpy(&dest_dword, dest, sizeof(dest_dword), I40E_DMA_TO_NONDMA);

 dest_dword &= ~(CPU_TO_LE32(mask));
 dest_dword |= CPU_TO_LE32(src_dword);


 i40e_memcpy(dest, &dest_dword, sizeof(dest_dword), I40E_NONDMA_TO_DMA);
}
