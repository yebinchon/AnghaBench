
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_srq_hwq_info {int wr_cons_cnt; } ;



__attribute__((used)) static
void qlnxr_inc_srq_wr_cons(struct qlnxr_srq_hwq_info *info)
{
        info->wr_cons_cnt++;
}
