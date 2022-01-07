
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct virtchnl_msg {int v_retval; int v_opcode; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int aq_buffer; struct i40e_hw hw; } ;
struct i40e_arq_event_info {int msg_buf; int msg_len; int desc; int buf_len; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR ;
 int I40E_SUCCESS ;
 int I40E_VFINT_ICR0_ENA1 ;
 int I40E_VFINT_ICR0_ENA1_ADMINQ_MASK ;
 int IXL_ADM_LIMIT ;
 int IXL_AQ_BUF_SZ ;
 int bzero (int ,int ) ;
 int i40e_clean_arq_element (struct i40e_hw*,struct i40e_arq_event_info*,scalar_t__*) ;
 int iavf_check_aq_errors (struct iavf_sc*) ;
 int iavf_vc_completion (struct iavf_sc*,int ,int ,int ,int ) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static enum i40e_status_code
iavf_process_adminq(struct iavf_sc *sc, u16 *pending)
{
 enum i40e_status_code status = I40E_SUCCESS;
 struct i40e_arq_event_info event;
 struct i40e_hw *hw = &sc->hw;
 struct virtchnl_msg *v_msg;
 int error = 0, loop = 0;
 u32 reg;

 error = iavf_check_aq_errors(sc);
 if (error)
  return (I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR);

 event.buf_len = IXL_AQ_BUF_SZ;
        event.msg_buf = sc->aq_buffer;
 bzero(event.msg_buf, IXL_AQ_BUF_SZ);
 v_msg = (struct virtchnl_msg *)&event.desc;


 do {
  status = i40e_clean_arq_element(hw, &event, pending);




  if (status)
   break;
  iavf_vc_completion(sc, v_msg->v_opcode,
      v_msg->v_retval, event.msg_buf, event.msg_len);
  bzero(event.msg_buf, IXL_AQ_BUF_SZ);
 } while (*pending && (loop++ < IXL_ADM_LIMIT));


 reg = rd32(hw, I40E_VFINT_ICR0_ENA1);
 reg |= I40E_VFINT_ICR0_ENA1_ADMINQ_MASK;
 wr32(hw, I40E_VFINT_ICR0_ENA1, reg);

 return (status);
}
