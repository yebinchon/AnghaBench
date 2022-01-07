
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int Q81_CTL_RI_DST_DFLTQ ;
 int Q81_CTL_RI_IDX_ALLMULTI ;
 int Q81_CTL_RI_TYPE_NICQMASK ;
 int qls_load_route_idx_reg_locked (int *,int,int ) ;

void
qls_reset_allmulti(qla_host_t *ha)
{
 int ret;

 ret = qls_load_route_idx_reg_locked(ha, (Q81_CTL_RI_TYPE_NICQMASK |
   Q81_CTL_RI_IDX_ALLMULTI | Q81_CTL_RI_DST_DFLTQ), 0);
 return;
}
