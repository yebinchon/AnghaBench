
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int dword ;


 int OSAL_MEMCPY (int *,int *,int) ;

__attribute__((used)) static u32 ecore_read_unaligned_dword(u8 *buf)
{
 u32 dword;

 OSAL_MEMCPY((u8 *)&dword, buf, sizeof(dword));
 return dword;
}
