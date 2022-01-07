
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ECORE_CRC32_LE (int ,int*,int ) ;
 int ETH_ALEN ;

__attribute__((used)) static inline uint8_t ecore_mcast_bin_from_mac(uint8_t *mac)
{
 return (ECORE_CRC32_LE(0, mac, ETH_ALEN) >> 24) & 0xff;
}
