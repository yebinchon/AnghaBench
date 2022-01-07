
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int REG_DUMP_LEN_SHIFT ;

__attribute__((used)) static u32 ecore_grc_dump_reg_entry_hdr(u32 *dump_buf,
          bool dump,
          u32 addr,
          u32 len)
{
 if (dump)
  *dump_buf = addr | (len << REG_DUMP_LEN_SHIFT);

 return 1;
}
