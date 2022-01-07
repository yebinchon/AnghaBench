
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int OSAL_CPU_TO_LE16 (int) ;

void ecore_rdma_set_fw_mac(u16 *p_fw_mac, u8 *p_ecore_mac)
{
 p_fw_mac[0] = OSAL_CPU_TO_LE16((p_ecore_mac[0] << 8) + p_ecore_mac[1]);
 p_fw_mac[1] = OSAL_CPU_TO_LE16((p_ecore_mac[2] << 8) + p_ecore_mac[3]);
 p_fw_mac[2] = OSAL_CPU_TO_LE16((p_ecore_mac[4] << 8) + p_ecore_mac[5]);
}
