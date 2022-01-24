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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_TM_PIO_ADDR ; 
 int /*<<< orphan*/  A_TP_TM_PIO_DATA ; 
 int A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR ; 
 int EINVAL ; 
 unsigned int M_TXTIMERSEPQ0 ; 
 unsigned int M_TXTIMERSEPQ1 ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct adapter*) ; 
 unsigned int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC5(struct adapter *adap, int sched, unsigned int ipg)
{
	unsigned int v, addr = A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR - sched / 2;

	/* convert ipg to nearest number of core clocks */
	ipg *= FUNC2(adap);
	ipg = (ipg + 5000) / 10000;
	if (ipg > M_TXTIMERSEPQ0)
		return -EINVAL;

	FUNC4(adap, A_TP_TM_PIO_ADDR, addr);
	v = FUNC3(adap, A_TP_TM_PIO_DATA);
	if (sched & 1)
		v = (v & FUNC0(M_TXTIMERSEPQ0)) | FUNC1(ipg);
	else
		v = (v & FUNC1(M_TXTIMERSEPQ1)) | FUNC0(ipg);
	FUNC4(adap, A_TP_TM_PIO_DATA, v);
	FUNC3(adap, A_TP_TM_PIO_DATA);
	return 0;
}