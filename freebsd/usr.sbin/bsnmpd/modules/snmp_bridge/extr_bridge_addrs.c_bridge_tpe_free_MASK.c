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
struct tp_entries {int dummy; } ;

/* Variables and functions */
 struct tp_entry* FUNC0 (struct tp_entries*) ; 
 int /*<<< orphan*/  FUNC1 (struct tp_entries*,struct tp_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tp_entry*) ; 
 int /*<<< orphan*/  tp_e ; 

__attribute__((used)) static void
FUNC3(struct tp_entries *headp)
{
	struct tp_entry *t;

	while ((t = FUNC0(headp)) != NULL) {
		FUNC1(headp, t, tp_e);
		FUNC2(t);
	}
}