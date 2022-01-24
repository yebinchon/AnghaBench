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
struct mac_mls {int mm_flags; } ;

/* Variables and functions */
 int MAC_MLS_FLAG_EFFECTIVE ; 
 int MAC_MLS_FLAG_RANGE ; 
 int /*<<< orphan*/  FUNC0 (struct mac_mls*,struct mac_mls*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,struct mac_mls*) ; 

__attribute__((used)) static void
FUNC2(struct mac_mls *source, struct mac_mls *dest)
{

	if (source->mm_flags & MAC_MLS_FLAG_EFFECTIVE)
		FUNC0(source, dest);
	if (source->mm_flags & MAC_MLS_FLAG_RANGE)
		FUNC1(source, dest);
}