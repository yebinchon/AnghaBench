
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_qp {int icid; int srq; } ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_create_qp_uresp {int rq_icid; void* rq_db_offset; void* rq_db2_offset; } ;
typedef int qlnx_host_t ;


 void* DB_ADDR_SHIFT (int ) ;
 int DQ_PWM_OFFSET_TCM_FLAGS ;
 int DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD ;
 int DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD ;
 scalar_t__ QLNX_IS_IWARP (struct qlnxr_dev*) ;
 int QL_DPRINT12 (int *,char*,...) ;

__attribute__((used)) static void
qlnxr_copy_rq_uresp(struct qlnxr_dev *dev,
 struct qlnxr_create_qp_uresp *uresp,
 struct qlnxr_qp *qp)
{
 qlnx_host_t *ha;

 ha = dev->ha;


 QL_DPRINT12(ha, "enter qp->srq = %p\n", qp->srq);

 if (qp->srq)
  return;


 if (QLNX_IS_IWARP(dev)) {

  uresp->rq_db_offset =
   DB_ADDR_SHIFT(DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD);
  uresp->rq_db2_offset =
   DB_ADDR_SHIFT(DQ_PWM_OFFSET_TCM_FLAGS);

  QL_DPRINT12(ha, "uresp->rq_db_offset = 0x%x "
   "uresp->rq_db2_offset = 0x%x\n",
   uresp->rq_db_offset, uresp->rq_db2_offset);
 } else {
  uresp->rq_db_offset =
   DB_ADDR_SHIFT(DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD);
 }
 uresp->rq_icid = qp->icid;

 QL_DPRINT12(ha, "exit\n");
 return;
}
