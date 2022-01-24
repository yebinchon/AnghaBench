#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int cim_num_obq; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_QUEUE_CONFIG_CTRL ; 
 int /*<<< orphan*/  A_CIM_QUEUE_CONFIG_REF ; 
 unsigned int CIM_NUM_IBQ ; 
 int F_IBQSELECT ; 
 int F_OBQSELECT ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct adapter *adap, u16 *base, u16 *size, u16 *thres)
{
	unsigned int i, v;
	int cim_num_obq = adap->chip_params->cim_num_obq;

	for (i = 0; i < CIM_NUM_IBQ; i++) {
		FUNC5(adap, A_CIM_QUEUE_CONFIG_REF, F_IBQSELECT |
			     FUNC3(i));
		v = FUNC4(adap, A_CIM_QUEUE_CONFIG_CTRL);
		/* value is in 256-byte units */
		*base++ = FUNC0(v) * 256;
		*size++ = FUNC1(v) * 256;
		*thres++ = FUNC2(v) * 8; /* 8-byte unit */
	}
	for (i = 0; i < cim_num_obq; i++) {
		FUNC5(adap, A_CIM_QUEUE_CONFIG_REF, F_OBQSELECT |
			     FUNC3(i));
		v = FUNC4(adap, A_CIM_QUEUE_CONFIG_CTRL);
		/* value is in 256-byte units */
		*base++ = FUNC0(v) * 256;
		*size++ = FUNC1(v) * 256;
	}
}