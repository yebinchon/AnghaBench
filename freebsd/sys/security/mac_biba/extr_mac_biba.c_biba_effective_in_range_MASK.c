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
struct mac_biba {int mb_flags; int /*<<< orphan*/  mb_rangelow; int /*<<< orphan*/  mb_effective; int /*<<< orphan*/  mb_rangehigh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAC_BIBA_FLAG_EFFECTIVE ; 
 int MAC_BIBA_FLAG_RANGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct mac_biba *effective, struct mac_biba *range)
{

	FUNC0((effective->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) != 0,
	    ("biba_effective_in_range: a not effective"));
	FUNC0((range->mb_flags & MAC_BIBA_FLAG_RANGE) != 0,
	    ("biba_effective_in_range: b not range"));

	return (FUNC1(&range->mb_rangehigh,
	    &effective->mb_effective) &&
	    FUNC1(&effective->mb_effective,
	    &range->mb_rangelow));

	return (1);
}