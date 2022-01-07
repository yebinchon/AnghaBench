
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
struct nicvf {int dev; } ;



 unsigned long NICVF_INTR_CQ_SHIFT ;

 unsigned long NICVF_INTR_MBOX_SHIFT ;

 unsigned long NICVF_INTR_PKT_DROP_SHIFT ;

 unsigned long NICVF_INTR_QS_ERR_SHIFT ;

 unsigned long NICVF_INTR_RBDR_SHIFT ;

 unsigned long NICVF_INTR_SQ_SHIFT ;

 unsigned long NICVF_INTR_TCP_TIMER_SHIFT ;
 int NIC_VF_ENA_W1S ;
 int device_printf (int ,char*) ;
 unsigned long nicvf_reg_read (struct nicvf*,int ) ;
 int nicvf_reg_write (struct nicvf*,int ,unsigned long) ;

void
nicvf_enable_intr(struct nicvf *nic, int int_type, int q_idx)
{
 uint64_t reg_val;

 reg_val = nicvf_reg_read(nic, NIC_VF_ENA_W1S);

 switch (int_type) {
 case 134:
  reg_val |= ((1UL << q_idx) << NICVF_INTR_CQ_SHIFT);
  break;
 case 129:
  reg_val |= ((1UL << q_idx) << NICVF_INTR_SQ_SHIFT);
  break;
 case 130:
  reg_val |= ((1UL << q_idx) << NICVF_INTR_RBDR_SHIFT);
  break;
 case 132:
  reg_val |= (1UL << NICVF_INTR_PKT_DROP_SHIFT);
  break;
 case 128:
  reg_val |= (1UL << NICVF_INTR_TCP_TIMER_SHIFT);
  break;
 case 133:
  reg_val |= (1UL << NICVF_INTR_MBOX_SHIFT);
  break;
 case 131:
  reg_val |= (1UL << NICVF_INTR_QS_ERR_SHIFT);
  break;
 default:
  device_printf(nic->dev,
      "Failed to enable interrupt: unknown type\n");
  break;
 }

 nicvf_reg_write(nic, NIC_VF_ENA_W1S, reg_val);
}
