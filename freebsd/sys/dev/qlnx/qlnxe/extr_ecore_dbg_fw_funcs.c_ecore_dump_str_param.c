
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BYTES_TO_DWORDS (int) ;
 int ecore_dump_align (char*,int,int) ;
 int ecore_dump_str (char*,int,char const*) ;

__attribute__((used)) static u32 ecore_dump_str_param(u32 *dump_buf,
        bool dump,
        const char *param_name,
        const char *param_val)
{
 char *char_buf = (char *)dump_buf;
 u32 offset = 0;


 offset += ecore_dump_str(char_buf + offset, dump, param_name);


 if (dump)
  *(char_buf + offset) = 1;
 offset++;


 offset += ecore_dump_str(char_buf + offset, dump, param_val);


 offset += ecore_dump_align(char_buf + offset, dump, offset);

 return BYTES_TO_DWORDS(offset);
}
