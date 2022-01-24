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
struct libalias {scalar_t__ cleanupIndex; int /*<<< orphan*/ * linkTableOut; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int LINK_TABLE_OUT_SIZE ; 
 struct alias_link* FUNC2 (int /*<<< orphan*/ *) ; 
 struct alias_link* FUNC3 (struct alias_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_out ; 

__attribute__((used)) static void
FUNC4(struct libalias *la)
{
	struct alias_link *lnk;
	int i;

	FUNC1(la);
	for (i = 0; i < LINK_TABLE_OUT_SIZE; i++) {
		lnk = FUNC2(&la->linkTableOut[i]);
		while (lnk != NULL) {
			struct alias_link *link_next = FUNC3(lnk, list_out);
			FUNC0(lnk);
			lnk = link_next;
		}
	}

	la->cleanupIndex = 0;
}