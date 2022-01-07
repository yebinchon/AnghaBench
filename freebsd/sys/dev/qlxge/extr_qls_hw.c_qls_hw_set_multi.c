
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int qla_host_t ;


 int Q8_MAC_ADDR_LEN ;
 scalar_t__ qls_hw_add_mcast (int *,int *) ;
 scalar_t__ qls_hw_del_mcast (int *,int *) ;

void
qls_hw_set_multi(qla_host_t *ha, uint8_t *mta, uint32_t mcnt,
 uint32_t add_mac)
{
 int i;

 for (i = 0; i < mcnt; i++) {
  if (add_mac) {
   if (qls_hw_add_mcast(ha, mta))
    break;
  } else {
   if (qls_hw_del_mcast(ha, mta))
    break;
  }

  mta += Q8_MAC_ADDR_LEN;
 }
 return;
}
