
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ecore_hwfn {int dummy; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DWORDS_TO_BYTES (int) ;
 int OSAL_STRCPY (char*,char const*) ;
 int OSAL_STRLEN (char*) ;
 int ecore_dump_num_param (int*,int,char*,int) ;
 int ecore_dump_section_hdr (int*,int,char*,int) ;
 int ecore_dump_str_param (int*,int,char*,char*) ;

__attribute__((used)) static u32 ecore_grc_dump_mem_hdr(struct ecore_hwfn *p_hwfn,
          u32 *dump_buf,
          bool dump,
          const char *name,
          u32 addr,
          u32 len,
          u32 bit_width,
          bool packed,
          const char *mem_group,
          bool is_storm,
          char storm_letter)
{
 u8 num_params = 3;
 u32 offset = 0;
 char buf[64];

 if (!len)
  DP_NOTICE(p_hwfn, 1, "Unexpected GRC Dump error: dumped memory size must be non-zero\n");

 if (bit_width)
  num_params++;
 if (packed)
  num_params++;


 offset += ecore_dump_section_hdr(dump_buf + offset, dump, "grc_mem", num_params);

 if (name) {


  if (is_storm) {
   OSAL_STRCPY(buf, "?STORM_");
   buf[0] = storm_letter;
   OSAL_STRCPY(buf + OSAL_STRLEN(buf), name);
  }
  else {
   OSAL_STRCPY(buf, name);
  }

  offset += ecore_dump_str_param(dump_buf + offset, dump, "name", buf);
 }
 else {


  u32 addr_in_bytes = DWORDS_TO_BYTES(addr);

  offset += ecore_dump_num_param(dump_buf + offset, dump, "addr", addr_in_bytes);
 }


 offset += ecore_dump_num_param(dump_buf + offset, dump, "len", len);


 if (bit_width)
  offset += ecore_dump_num_param(dump_buf + offset, dump, "width", bit_width);


 if (packed)
  offset += ecore_dump_num_param(dump_buf + offset, dump, "packed", 1);


 if (is_storm) {
  OSAL_STRCPY(buf, "?STORM_");
  buf[0] = storm_letter;
  OSAL_STRCPY(buf + OSAL_STRLEN(buf), mem_group);
 }
 else {
  OSAL_STRCPY(buf, mem_group);
 }

 offset += ecore_dump_str_param(dump_buf + offset, dump, "type", buf);

 return offset;
}
