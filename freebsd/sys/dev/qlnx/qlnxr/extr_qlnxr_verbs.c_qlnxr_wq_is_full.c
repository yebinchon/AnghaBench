
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_qp_hwq_info {int prod; int max_wr; int cons; } ;



__attribute__((used)) static inline int
qlnxr_wq_is_full(struct qlnxr_qp_hwq_info *wq)
{
 return (((wq->prod + 1) % wq->max_wr) == wq->cons);
}
