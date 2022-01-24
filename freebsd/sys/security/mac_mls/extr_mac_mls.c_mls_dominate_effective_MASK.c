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
struct mac_mls {int mm_flags; int /*<<< orphan*/  mm_effective; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAC_MLS_FLAG_EFFECTIVE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct mac_mls *a, struct mac_mls *b)
{
	FUNC0((a->mm_flags & MAC_MLS_FLAG_EFFECTIVE) != 0,
	    ("mls_dominate_effective: a not effective"));
	FUNC0((b->mm_flags & MAC_MLS_FLAG_EFFECTIVE) != 0,
	    ("mls_dominate_effective: b not effective"));

	return (FUNC1(&a->mm_effective, &b->mm_effective));
}