
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int qlnx_host_t ;


 int ETHER_HDR_LEN ;
 scalar_t__ qlnx_hw_add_mcast (int *,int *) ;
 scalar_t__ qlnx_hw_del_mcast (int *,int *) ;

__attribute__((used)) static void
qlnx_hw_set_multi(qlnx_host_t *ha, uint8_t *mta, uint32_t mcnt,
 uint32_t add_mac)
{
        int i;

        for (i = 0; i < mcnt; i++) {
                if (add_mac) {
                        if (qlnx_hw_add_mcast(ha, mta))
                                break;
                } else {
                        if (qlnx_hw_del_mcast(ha, mta))
                                break;
                }

                mta += ETHER_HDR_LEN;
        }
        return;
}
