
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int BYTES_TO_DWORDS (int ) ;
 int OSAL_NULL ;
 int RDIF_REG_DEBUG_ERROR_INFO ;
 int RDIF_REG_DEBUG_ERROR_INFO_SIZE ;
 int TDIF_REG_DEBUG_ERROR_INFO ;
 int TDIF_REG_DEBUG_ERROR_INFO_SIZE ;
 int ecore_grc_dump_reg_entry_skip (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int ,int ,int,int) ;
 int ecore_grc_dump_regs_hdr (int*,int,int,char*,int,int ,int ) ;

__attribute__((used)) static u32 ecore_grc_dump_special_regs(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt,
            u32 *dump_buf,
            bool dump)
{
 u32 offset = 0;

 offset += ecore_grc_dump_regs_hdr(dump_buf, dump, 2, "eng", -1, OSAL_NULL, OSAL_NULL);




 offset += ecore_grc_dump_reg_entry_skip(p_hwfn, p_ptt, dump_buf + offset, dump, BYTES_TO_DWORDS(RDIF_REG_DEBUG_ERROR_INFO), RDIF_REG_DEBUG_ERROR_INFO_SIZE, 7, 1);
 offset += ecore_grc_dump_reg_entry_skip(p_hwfn, p_ptt, dump_buf + offset, dump, BYTES_TO_DWORDS(TDIF_REG_DEBUG_ERROR_INFO), TDIF_REG_DEBUG_ERROR_INFO_SIZE, 7, 1);

 return offset;
}
