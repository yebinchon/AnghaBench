
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_qp {int srq; } ;



__attribute__((used)) static inline bool qlnxr_qp_has_srq(struct qlnxr_qp *qp)
{
        return !!qp->srq;
}
