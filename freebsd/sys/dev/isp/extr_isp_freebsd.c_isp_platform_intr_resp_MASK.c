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
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIU2400_HCCR ; 
 int /*<<< orphan*/  HCCR_2400_CMD_CLEAR_RISC_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void *arg)
{
	ispsoftc_t *isp = arg;

	FUNC0(isp);
	FUNC3(isp);
	FUNC1(isp);

	/* We have handshake enabled, so explicitly complete interrupt */
	FUNC2(isp, BIU2400_HCCR, HCCR_2400_CMD_CLEAR_RISC_INT);
}