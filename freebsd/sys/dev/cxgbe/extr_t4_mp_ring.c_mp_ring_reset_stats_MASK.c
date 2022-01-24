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
struct mp_ring {int /*<<< orphan*/  abdications; int /*<<< orphan*/  restarts; int /*<<< orphan*/  stalls; int /*<<< orphan*/  starts; int /*<<< orphan*/  drops; int /*<<< orphan*/  enqueues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(struct mp_ring *r)
{

	FUNC0(r->enqueues);
	FUNC0(r->drops);
	FUNC0(r->starts);
	FUNC0(r->stalls);
	FUNC0(r->restarts);
	FUNC0(r->abdications);
}