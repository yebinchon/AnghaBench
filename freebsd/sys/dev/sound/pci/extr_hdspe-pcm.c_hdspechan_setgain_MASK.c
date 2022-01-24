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
struct sc_chinfo {int lvol; int rvol; int /*<<< orphan*/  rslot; int /*<<< orphan*/  lslot; } ;

/* Variables and functions */
 int HDSPE_MAX_GAIN ; 
 int /*<<< orphan*/  FUNC0 (struct sc_chinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct sc_chinfo *ch)
{

	FUNC0(ch, ch->lslot, ch->lslot,
	    ch->lvol * HDSPE_MAX_GAIN / 100);
	FUNC0(ch, ch->rslot, ch->rslot,
	    ch->rvol * HDSPE_MAX_GAIN / 100);

	return (0);
}