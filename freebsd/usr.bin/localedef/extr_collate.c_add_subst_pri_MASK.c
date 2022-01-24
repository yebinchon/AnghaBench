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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 size_t COLLATE_STR_LEN ; 
 size_t curr_subst ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * subst_weights ; 

__attribute__((used)) static void
FUNC1(int32_t ref)
{
	if (curr_subst >= COLLATE_STR_LEN) {
		FUNC0(stderr,"substitution string is too long");
		return;
	}
	subst_weights[curr_subst] = ref;
	curr_subst++;
}