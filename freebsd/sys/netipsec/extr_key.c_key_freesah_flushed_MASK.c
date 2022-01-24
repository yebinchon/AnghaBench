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
struct secashead_queue {int dummy; } ;
struct secasvar {struct secashead_queue savtree_alive; struct secashead_queue savtree_larval; } ;
struct secashead {struct secashead_queue savtree_alive; struct secashead_queue savtree_larval; } ;

/* Variables and functions */
 struct secasvar* FUNC0 (struct secashead_queue*) ; 
 struct secasvar* FUNC1 (struct secasvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct secashead_queue*,struct secasvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC3 (struct secasvar**) ; 
 int /*<<< orphan*/  FUNC4 (struct secasvar**) ; 

__attribute__((used)) static void
FUNC5(struct secashead_queue *flushq)
{
	struct secashead *sah, *nextsah;
	struct secasvar *sav, *nextsav;

	sah = FUNC0(flushq);
	while (sah != NULL) {
		sav = FUNC0(&sah->savtree_larval);
		while (sav != NULL) {
			nextsav = FUNC1(sav, chain);
			FUNC2(&sah->savtree_larval, sav, chain);
			FUNC4(&sav); /* release last reference */
			FUNC3(&sah); /* release reference from SAV */
			sav = nextsav;
		}
		sav = FUNC0(&sah->savtree_alive);
		while (sav != NULL) {
			nextsav = FUNC1(sav, chain);
			FUNC2(&sah->savtree_alive, sav, chain);
			FUNC4(&sav); /* release last reference */
			FUNC3(&sah); /* release reference from SAV */
			sav = nextsav;
		}
		nextsah = FUNC1(sah, chain);
		FUNC3(&sah);	/* release last reference */
		sah = nextsah;
	}
}