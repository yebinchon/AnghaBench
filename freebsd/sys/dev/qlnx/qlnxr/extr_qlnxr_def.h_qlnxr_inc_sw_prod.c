
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_qp_hwq_info {int prod; int max_wr; } ;



__attribute__((used)) static inline void
qlnxr_inc_sw_prod(struct qlnxr_qp_hwq_info *info)
{
        info->prod = (info->prod + 1) % info->max_wr;
}
