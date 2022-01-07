
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct i40e_context_ele {int lsb; int width; int offset; } ;
typedef int src_qword ;
typedef int dest_qword ;
typedef int __le64 ;


 int BIT_ULL (int) ;
 int CPU_TO_LE64 (int) ;
 int I40E_DMA_TO_NONDMA ;
 int I40E_NONDMA_TO_DMA ;
 int LE64_TO_CPU (int) ;
 int i40e_memcpy (int*,int*,int,int ) ;

__attribute__((used)) static void i40e_read_qword(u8 *hmc_bits,
       struct i40e_context_ele *ce_info,
       u8 *dest)
{
 u64 dest_qword, mask;
 u8 *src, *target;
 u16 shift_width;
 __le64 src_qword;


 shift_width = ce_info->lsb % 8;





 if (ce_info->width < 64)
  mask = BIT_ULL(ce_info->width) - 1;
 else
  mask = ~(u64)0;


 mask <<= shift_width;


 src = hmc_bits + (ce_info->lsb / 8);

 i40e_memcpy(&src_qword, src, sizeof(src_qword), I40E_DMA_TO_NONDMA);




 src_qword &= ~(CPU_TO_LE64(mask));


 dest_qword = LE64_TO_CPU(src_qword);

 dest_qword >>= shift_width;


 target = dest + ce_info->offset;


 i40e_memcpy(target, &dest_qword, sizeof(dest_qword),
      I40E_NONDMA_TO_DMA);
}
