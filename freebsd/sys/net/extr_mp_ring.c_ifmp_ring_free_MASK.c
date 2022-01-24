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
struct ifmp_ring {int /*<<< orphan*/  mt; int /*<<< orphan*/ * abdications; int /*<<< orphan*/ * restarts; int /*<<< orphan*/ * stalls; int /*<<< orphan*/ * starts; int /*<<< orphan*/ * drops; int /*<<< orphan*/ * enqueues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifmp_ring*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ifmp_ring *r)
{

	if (r == NULL)
		return;

	if (r->enqueues != NULL)
		FUNC0(r->enqueues);
	if (r->drops != NULL)
		FUNC0(r->drops);
	if (r->starts != NULL)
		FUNC0(r->starts);
	if (r->stalls != NULL)
		FUNC0(r->stalls);
	if (r->restarts != NULL)
		FUNC0(r->restarts);
	if (r->abdications != NULL)
		FUNC0(r->abdications);

	FUNC1(r, r->mt);
}