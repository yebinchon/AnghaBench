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
typedef  int uint64_t ;
struct nicvf {int dummy; } ;

/* Variables and functions */
 int NICVF_INTR_MBOX_MASK ; 
 int /*<<< orphan*/  NIC_VF_INT ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*) ; 
 int FUNC1 (struct nicvf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct nicvf *nic = (struct nicvf *)arg;
	uint64_t intr;

	intr = FUNC1(nic, NIC_VF_INT);
	/* Check for spurious interrupt */
	if (!(intr & NICVF_INTR_MBOX_MASK))
		return;

	FUNC0(nic);
}