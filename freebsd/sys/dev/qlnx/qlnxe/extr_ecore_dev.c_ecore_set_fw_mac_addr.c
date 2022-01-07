
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __le16 ;



void ecore_set_fw_mac_addr(__le16 *fw_msb,
     __le16 *fw_mid,
     __le16 *fw_lsb,
     u8 *mac)
{
 ((u8 *)fw_msb)[0] = mac[1];
 ((u8 *)fw_msb)[1] = mac[0];
 ((u8 *)fw_mid)[0] = mac[3];
 ((u8 *)fw_mid)[1] = mac[2];
 ((u8 *)fw_lsb)[0] = mac[5];
 ((u8 *)fw_lsb)[1] = mac[4];
}
