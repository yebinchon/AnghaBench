
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct virtchnl_vector_map {int rxitr_idx; int txitr_idx; int vector_id; } ;
struct ixl_pf {int hw; } ;
typedef enum i40e_queue_type { ____Placeholder_i40e_queue_type } i40e_queue_type ;


 int I40E_QINT_RQCTL (int) ;
 int I40E_QINT_RQCTL_CAUSE_ENA_MASK ;
 int I40E_QINT_RQCTL_ITR_INDX_SHIFT ;
 int I40E_QINT_RQCTL_MSIX_INDX_SHIFT ;
 int I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT ;
 int I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT ;
 int I40E_QINT_TQCTL (int) ;
 int I40E_QUEUE_TYPE_RX ;
 int htole32 (int) ;
 int wr32 (int *,int ,int ) ;

__attribute__((used)) static void
ixl_vf_set_qctl(struct ixl_pf *pf,
    const struct virtchnl_vector_map *vector,
    enum i40e_queue_type cur_type, uint16_t cur_queue,
    enum i40e_queue_type *last_type, uint16_t *last_queue)
{
 uint32_t offset, qctl;
 uint16_t itr_indx;

 if (cur_type == I40E_QUEUE_TYPE_RX) {
  offset = I40E_QINT_RQCTL(cur_queue);
  itr_indx = vector->rxitr_idx;
 } else {
  offset = I40E_QINT_TQCTL(cur_queue);
  itr_indx = vector->txitr_idx;
 }

 qctl = htole32((vector->vector_id << I40E_QINT_RQCTL_MSIX_INDX_SHIFT) |
     (*last_type << I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT) |
     (*last_queue << I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT) |
     I40E_QINT_RQCTL_CAUSE_ENA_MASK |
     (itr_indx << I40E_QINT_RQCTL_ITR_INDX_SHIFT));

 wr32(&pf->hw, offset, qctl);

 *last_type = cur_type;
 *last_queue = cur_queue;
}
