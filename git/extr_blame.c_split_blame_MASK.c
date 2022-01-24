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
struct blame_entry {scalar_t__ suspect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blame_entry***,struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_entry***,struct blame_entry*,struct blame_entry*) ; 

__attribute__((used)) static void FUNC2(struct blame_entry ***blamed,
			struct blame_entry ***unblamed,
			struct blame_entry *split,
			struct blame_entry *e)
{
	if (split[0].suspect && split[2].suspect) {
		/* The first part (reuse storage for the existing entry e) */
		FUNC1(unblamed, e, &split[0]);

		/* The last part -- me */
		FUNC0(unblamed, &split[2]);

		/* ... and the middle part -- parent */
		FUNC0(blamed, &split[1]);
	}
	else if (!split[0].suspect && !split[2].suspect)
		/*
		 * The parent covers the entire area; reuse storage for
		 * e and replace it with the parent.
		 */
		FUNC1(blamed, e, &split[1]);
	else if (split[0].suspect) {
		/* me and then parent */
		FUNC1(unblamed, e, &split[0]);
		FUNC0(blamed, &split[1]);
	}
	else {
		/* parent and then me */
		FUNC1(blamed, e, &split[1]);
		FUNC0(unblamed, &split[2]);
	}
}