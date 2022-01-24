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
struct conf_entry {int dummy; } ;
struct cflist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cflist*) ; 
 struct conf_entry* FUNC1 (struct cflist*) ; 
 int /*<<< orphan*/  FUNC2 (struct cflist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cf_nextp ; 
 int /*<<< orphan*/  FUNC3 (struct cflist*) ; 
 int /*<<< orphan*/  FUNC4 (struct conf_entry*) ; 

__attribute__((used)) static void
FUNC5(struct cflist *list)
{
	struct conf_entry *ent;

	while (!FUNC0(list)) {
		ent = FUNC1(list);
		FUNC2(list, cf_nextp);
		FUNC4(ent);
	}

	FUNC3(list);
	list = NULL;
}