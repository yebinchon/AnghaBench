
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_qp {scalar_t__ qp_type; } ;


 scalar_t__ IB_QPT_GSI ;
 scalar_t__ qlnxr_qp_has_srq (struct qlnxr_qp*) ;

__attribute__((used)) static inline bool qlnxr_qp_has_rq(struct qlnxr_qp *qp)
{
        if (qp->qp_type == IB_QPT_GSI || qlnxr_qp_has_srq(qp))
                return 0;

        return 1;
}
