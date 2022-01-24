#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned long uint64_t ;
struct nicvf {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  NICVF_INTR_CQ 134 
 unsigned long NICVF_INTR_CQ_SHIFT ; 
#define  NICVF_INTR_MBOX 133 
 unsigned long NICVF_INTR_MBOX_SHIFT ; 
#define  NICVF_INTR_PKT_DROP 132 
 unsigned long NICVF_INTR_PKT_DROP_SHIFT ; 
#define  NICVF_INTR_QS_ERR 131 
 unsigned long NICVF_INTR_QS_ERR_SHIFT ; 
#define  NICVF_INTR_RBDR 130 
 unsigned long NICVF_INTR_RBDR_SHIFT ; 
#define  NICVF_INTR_SQ 129 
 unsigned long NICVF_INTR_SQ_SHIFT ; 
#define  NICVF_INTR_TCP_TIMER 128 
 unsigned long NICVF_INTR_TCP_TIMER_SHIFT ; 
 int /*<<< orphan*/  NIC_VF_ENA_W1S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC1 (struct nicvf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int /*<<< orphan*/ ,unsigned long) ; 

void
FUNC3(struct nicvf *nic, int int_type, int q_idx)
{
	uint64_t reg_val;

	reg_val = FUNC1(nic, NIC_VF_ENA_W1S);

	switch (int_type) {
	case NICVF_INTR_CQ:
		reg_val |= ((1UL << q_idx) << NICVF_INTR_CQ_SHIFT);
		break;
	case NICVF_INTR_SQ:
		reg_val |= ((1UL << q_idx) << NICVF_INTR_SQ_SHIFT);
		break;
	case NICVF_INTR_RBDR:
		reg_val |= ((1UL << q_idx) << NICVF_INTR_RBDR_SHIFT);
		break;
	case NICVF_INTR_PKT_DROP:
		reg_val |= (1UL << NICVF_INTR_PKT_DROP_SHIFT);
		break;
	case NICVF_INTR_TCP_TIMER:
		reg_val |= (1UL << NICVF_INTR_TCP_TIMER_SHIFT);
		break;
	case NICVF_INTR_MBOX:
		reg_val |= (1UL << NICVF_INTR_MBOX_SHIFT);
		break;
	case NICVF_INTR_QS_ERR:
		reg_val |= (1UL << NICVF_INTR_QS_ERR_SHIFT);
		break;
	default:
		FUNC0(nic->dev,
			   "Failed to enable interrupt: unknown type\n");
		break;
	}

	FUNC2(nic, NIC_VF_ENA_W1S, reg_val);
}