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
struct bufdomain {scalar_t__ bd_numdirtybuffers; scalar_t__ bd_lodirtybuffers; scalar_t__ bd_hidirtybuffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BUF_DOMAINS ; 
 int /*<<< orphan*/  bdhidirty ; 
 int /*<<< orphan*/  bdirtylock ; 
 int /*<<< orphan*/  bdlodirty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bufdomain *bd)
{

	FUNC2(&bdirtylock);
	if (bd->bd_numdirtybuffers > bd->bd_lodirtybuffers)
		FUNC1(BUF_DOMAINS, FUNC0(bd), &bdlodirty);
	if (bd->bd_numdirtybuffers > bd->bd_hidirtybuffers)
		FUNC1(BUF_DOMAINS, FUNC0(bd), &bdhidirty);
	FUNC3(&bdirtylock);
}