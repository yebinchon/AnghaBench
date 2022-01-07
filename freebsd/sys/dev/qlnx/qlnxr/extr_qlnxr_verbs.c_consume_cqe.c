
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_cq {scalar_t__ latest_cqe; scalar_t__ toggle_cqe; int pbl; int pbl_toggle; } ;


 int RDMA_RESIZE_CQ_RAMROD_DATA_TOGGLE_BIT_MASK ;
 scalar_t__ ecore_chain_consume (int *) ;

__attribute__((used)) static void
consume_cqe(struct qlnxr_cq *cq)
{

 if (cq->latest_cqe == cq->toggle_cqe)
  cq->pbl_toggle ^= RDMA_RESIZE_CQ_RAMROD_DATA_TOGGLE_BIT_MASK;

 cq->latest_cqe = ecore_chain_consume(&cq->pbl);
}
