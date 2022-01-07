
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ETH_MULTICAST_BIN_FROM_MAC_SEED ;
 int ecore_crc32c_le (int ,int*) ;

u8 ecore_mcast_bin_from_mac(u8 *mac)
{
 u32 crc = ecore_crc32c_le(ETH_MULTICAST_BIN_FROM_MAC_SEED, mac);

 return crc & 0xff;
}
