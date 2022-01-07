
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_qp {scalar_t__ qp_type; } ;


 scalar_t__ IB_QPT_GSI ;

__attribute__((used)) static inline bool qlnxr_qp_has_sq(struct qlnxr_qp *qp)
{
        if (qp->qp_type == IB_QPT_GSI)
                return 0;

        return 1;
}
