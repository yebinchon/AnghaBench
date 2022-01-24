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
struct mac_biba {int mb_flags; } ;

/* Variables and functions */
 int MAC_BIBA_FLAG_EFFECTIVE ; 
 int MAC_BIBA_FLAG_RANGE ; 
 int /*<<< orphan*/  FUNC0 (struct mac_biba*,struct mac_biba*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,struct mac_biba*) ; 

__attribute__((used)) static void
FUNC2(struct mac_biba *source, struct mac_biba *dest)
{

	if (source->mb_flags & MAC_BIBA_FLAG_EFFECTIVE)
		FUNC0(source, dest);
	if (source->mb_flags & MAC_BIBA_FLAG_RANGE)
		FUNC1(source, dest);
}