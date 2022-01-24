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
struct tp_entry {int dummy; } ;
struct bridge_if {struct tp_entry* f_tpa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tp_entry*,int /*<<< orphan*/ ) ; 
 struct tp_entry* FUNC1 (struct tp_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct tp_entry*) ; 
 int /*<<< orphan*/  tp_e ; 
 int /*<<< orphan*/  tp_entries ; 

void
FUNC3(struct tp_entry *te, struct bridge_if *bif)
{
	if (bif->f_tpa == te)
		bif->f_tpa = FUNC1(te);

	FUNC0(&tp_entries, te, tp_e);
	FUNC2(te);
}