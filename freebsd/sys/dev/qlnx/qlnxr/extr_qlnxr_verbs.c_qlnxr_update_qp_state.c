
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int raw; } ;
struct TYPE_7__ {int raw; } ;
struct TYPE_10__ {int cons; int prod; TYPE_2__ iwarp_db2_data; scalar_t__ iwarp_db2; TYPE_1__ db_data; scalar_t__ db; } ;
struct qlnxr_qp {int state; TYPE_4__ sq; TYPE_4__ rq; int srq; int prev_wqe_size; } ;
struct qlnxr_dev {TYPE_3__* ha; } ;
struct ecore_dev {scalar_t__ doorbells; } ;
struct TYPE_9__ {int pci_dbells; struct ecore_dev cdev; } ;
typedef TYPE_3__ qlnx_host_t ;
typedef enum ecore_roce_qp_state { ____Placeholder_ecore_roce_qp_state } ecore_roce_qp_state ;


 int BUS_SPACE_BARRIER_READ ;






 int EINVAL ;
 int QLNX_IS_IWARP (struct qlnxr_dev*) ;
 int QL_DPRINT11 (TYPE_3__*,char*,int ,int ,int ,int ) ;
 int QL_DPRINT12 (TYPE_3__*,char*,...) ;
 int bus_barrier (int ,int ,int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 int mmiowb () ;
 int qlnxr_reset_qp_hwq_info (TYPE_4__*) ;
 int wmb () ;

__attribute__((used)) static int
qlnxr_update_qp_state(struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 enum ecore_roce_qp_state new_state)
{
 int status = 0;
 uint32_t reg_addr;
 struct ecore_dev *cdev;
 qlnx_host_t *ha;

 ha = dev->ha;
 cdev = &ha->cdev;

 QL_DPRINT12(ha, "enter qp = %p new_state = 0x%x qp->state = 0x%x\n",
  qp, new_state, qp->state);

 if (new_state == qp->state) {
  return 0;
 }

 switch (qp->state) {
 case 131:
  switch (new_state) {
  case 132:
   qp->prev_wqe_size = 0;
   qlnxr_reset_qp_hwq_info(&qp->sq);
   if (!(qp->srq))
    qlnxr_reset_qp_hwq_info(&qp->rq);
   break;
  default:
   status = -EINVAL;
   break;
  };
  break;
 case 132:

  switch (new_state) {
  case 130:

   if (qp->srq)
    break;
   wmb();





   reg_addr = (uint32_t)((uint8_t *)qp->rq.db -
     (uint8_t *)cdev->doorbells);

   bus_write_4(ha->pci_dbells, reg_addr, qp->rq.db_data.raw);
   bus_barrier(ha->pci_dbells, 0, 0, BUS_SPACE_BARRIER_READ);

   if (QLNX_IS_IWARP(dev)) {
    reg_addr = (uint32_t)((uint8_t *)qp->rq.iwarp_db2 -
     (uint8_t *)cdev->doorbells);
    bus_write_4(ha->pci_dbells, reg_addr, qp->rq.iwarp_db2_data.raw);

    bus_barrier(ha->pci_dbells, 0, 0, BUS_SPACE_BARRIER_READ);

   }


   mmiowb();
   break;
  case 133:

   break;
  default:

   status = -EINVAL;
   break;
  };
  break;
 case 130:

  switch (new_state) {
  case 129:
   break;
  case 133:
   break;
  default:

   status = -EINVAL;
   break;
  };
  break;
 case 129:

  switch (new_state) {
  case 128:
   break;
  case 133:
   break;
  default:

   status = -EINVAL;
   break;
  };
  break;
 case 128:

  switch (new_state) {
  case 129:
  case 133:
   break;
  default:

   status = -EINVAL;
   break;
  };
  break;
 case 133:

  switch (new_state) {
  case 131:
   if ((qp->rq.prod != qp->rq.cons) ||
       (qp->sq.prod != qp->sq.cons)) {
    QL_DPRINT11(ha,
     "Error->Reset with rq/sq "
     "not empty rq.prod=0x%x rq.cons=0x%x"
     " sq.prod=0x%x sq.cons=0x%x\n",
     qp->rq.prod, qp->rq.cons,
     qp->sq.prod, qp->sq.cons);
    status = -EINVAL;
   }
   break;
  default:
   status = -EINVAL;
   break;
  };
  break;
 default:
  status = -EINVAL;
  break;
 };

 QL_DPRINT12(ha, "exit\n");
 return status;
}
