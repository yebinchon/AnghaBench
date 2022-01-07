
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicvf {int dev; } ;



 unsigned long NICVF_INTR_CQ_SHIFT ;

 int NICVF_INTR_MBOX_MASK ;

 int NICVF_INTR_PKT_DROP_MASK ;

 int NICVF_INTR_QS_ERR_MASK ;

 unsigned long NICVF_INTR_RBDR_SHIFT ;

 unsigned long NICVF_INTR_SQ_SHIFT ;

 int NICVF_INTR_TCP_TIMER_MASK ;
 int NIC_VF_ENA_W1S ;
 int device_printf (int ,char*) ;
 int nicvf_reg_read (struct nicvf*,int ) ;

int
nicvf_is_intr_enabled(struct nicvf *nic, int int_type, int q_idx)
{
 uint64_t reg_val;
 uint64_t mask = 0xff;

 reg_val = nicvf_reg_read(nic, NIC_VF_ENA_W1S);

 switch (int_type) {
 case 134:
  mask = ((1UL << q_idx) << NICVF_INTR_CQ_SHIFT);
  break;
 case 129:
  mask = ((1UL << q_idx) << NICVF_INTR_SQ_SHIFT);
  break;
 case 130:
  mask = ((1UL << q_idx) << NICVF_INTR_RBDR_SHIFT);
  break;
 case 132:
  mask = NICVF_INTR_PKT_DROP_MASK;
  break;
 case 128:
  mask = NICVF_INTR_TCP_TIMER_MASK;
  break;
 case 133:
  mask = NICVF_INTR_MBOX_MASK;
  break;
 case 131:
  mask = NICVF_INTR_QS_ERR_MASK;
  break;
 default:
  device_printf(nic->dev,
      "Failed to check interrupt enable: unknown type\n");
  break;
 }

 return (reg_val & mask);
}
