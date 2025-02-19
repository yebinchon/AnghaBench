
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BYTES_IN_DWORD ;
 int OSAL_MEMSET (char*,int ,int) ;

__attribute__((used)) static u32 ecore_dump_align(char *dump_buf,
       bool dump,
       u32 byte_offset)
{
 u8 offset_in_dword, align_size;

 offset_in_dword = (u8)(byte_offset & 0x3);
 align_size = offset_in_dword ? BYTES_IN_DWORD - offset_in_dword : 0;

 if (dump && align_size)
  OSAL_MEMSET(dump_buf, 0, align_size);

 return align_size;
}
