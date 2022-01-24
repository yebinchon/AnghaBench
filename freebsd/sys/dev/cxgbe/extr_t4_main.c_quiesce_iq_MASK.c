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
struct sge_iq {int /*<<< orphan*/  state; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IQS_DISABLED ; 
 int /*<<< orphan*/  IQS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2(struct adapter *sc, struct sge_iq *iq)
{
	(void) sc;	/* unused */

	/* Synchronize with the interrupt handler */
	while (!FUNC0(&iq->state, IQS_IDLE, IQS_DISABLED))
		FUNC1("iqfree", 1);
}