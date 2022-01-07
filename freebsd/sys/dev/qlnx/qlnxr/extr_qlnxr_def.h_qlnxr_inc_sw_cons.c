
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_qp_hwq_info {int cons; int max_wr; int wqe_cons; } ;



__attribute__((used)) static inline void
qlnxr_inc_sw_cons(struct qlnxr_qp_hwq_info *info)
{
        info->cons = (info->cons + 1) % info->max_wr;
        info->wqe_cons++;
}
