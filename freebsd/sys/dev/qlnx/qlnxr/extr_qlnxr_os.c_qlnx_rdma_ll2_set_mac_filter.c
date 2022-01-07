
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qlnx_host {int dummy; } ;
struct ecore_hwfn {scalar_t__ p_dev; } ;


 int QL_DPRINT2 (struct qlnx_host*,char*,void*) ;
 int ecore_llh_add_mac_filter (scalar_t__,int ,int *) ;
 int ecore_llh_remove_mac_filter (scalar_t__,int ,int *) ;

int
qlnx_rdma_ll2_set_mac_filter(void *rdma_ctx, uint8_t *old_mac_address,
 uint8_t *new_mac_address)
{
        struct ecore_hwfn *p_hwfn = rdma_ctx;
        struct qlnx_host *ha;
        int ret = 0;

        ha = (struct qlnx_host *)(p_hwfn->p_dev);
        QL_DPRINT2(ha, "enter rdma_ctx (%p)\n", rdma_ctx);

        if (old_mac_address)
                ecore_llh_remove_mac_filter(p_hwfn->p_dev, 0, old_mac_address);

        if (new_mac_address)
                ret = ecore_llh_add_mac_filter(p_hwfn->p_dev, 0, new_mac_address);

        QL_DPRINT2(ha, "exit rdma_ctx (%p)\n", rdma_ctx);
        return (ret);
}
