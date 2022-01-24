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
struct mac_lomac {int ml_flags; int /*<<< orphan*/  ml_rangelow; int /*<<< orphan*/  ml_auxsingle; int /*<<< orphan*/  ml_rangehigh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAC_LOMAC_FLAG_AUX ; 
 int MAC_LOMAC_FLAG_RANGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct mac_lomac *single, struct mac_lomac *range)
{

	FUNC0((single->ml_flags & MAC_LOMAC_FLAG_AUX) != 0,
	    ("lomac_single_in_range: a not auxsingle"));
	FUNC0((range->ml_flags & MAC_LOMAC_FLAG_RANGE) != 0,
	    ("lomac_single_in_range: b not range"));

	return (FUNC1(&range->ml_rangehigh,
	    &single->ml_auxsingle) &&
	    FUNC1(&single->ml_auxsingle,
	    &range->ml_rangelow));
}