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
struct nicvf {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  NICVF_INTR_MBOX ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nicvf *nic)
{

	/* Enable mailbox interrupt */
	FUNC2(nic, NICVF_INTR_MBOX, 0);

	/* Check if VF is able to communicate with PF */
	if (!FUNC0(nic)) {
		FUNC1(nic, NICVF_INTR_MBOX, 0);
		return (ENXIO);
	}

	return (0);
}