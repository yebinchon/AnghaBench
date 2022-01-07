
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int OSAL_MEMCPY (int *,int *,int) ;
 int ecore_calc_crc32c (int *,int,int ) ;

__attribute__((used)) static u32 ecore_crc32c_le(u32 seed, u8 *mac)
{
 u32 packet_buf[2] = {0};

 OSAL_MEMCPY((u8 *)(&packet_buf[0]), &mac[0], 6);
 return ecore_calc_crc32c((u8 *)packet_buf, 8, seed);
}
