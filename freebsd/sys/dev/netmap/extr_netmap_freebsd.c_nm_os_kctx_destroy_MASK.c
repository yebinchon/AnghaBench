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
struct nm_kctx {scalar_t__ worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct nm_kctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nm_kctx*) ; 

void
FUNC2(struct nm_kctx *nmk)
{
	if (!nmk)
		return;

	if (nmk->worker)
		FUNC1(nmk);

	FUNC0(nmk, M_DEVBUF);
}