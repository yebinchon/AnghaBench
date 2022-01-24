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
struct tp_entry {scalar_t__ sysindex; } ;
struct tp_entries {int dummy; } ;
struct bridge_if {scalar_t__ sysindex; struct tp_entry* f_tpa; } ;

/* Variables and functions */
 struct tp_entry* FUNC0 (struct tp_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tp_entries*,struct tp_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tp_entry*) ; 
 int /*<<< orphan*/  tp_e ; 

__attribute__((used)) static void
FUNC3(struct tp_entries *headp,
	struct bridge_if *bif)
{
	struct tp_entry *tp;

	while (bif->f_tpa != NULL && bif->sysindex == bif->f_tpa->sysindex) {
		tp = FUNC0(bif->f_tpa, tp_e);
		FUNC1(headp, bif->f_tpa, tp_e);
		FUNC2(bif->f_tpa);
		bif->f_tpa = tp;
	}
}