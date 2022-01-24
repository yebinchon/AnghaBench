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
struct mac_lomac {int ml_flags; } ;

/* Variables and functions */
 int MAC_LOMAC_FLAG_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (struct mac_lomac*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_lomac*,struct mac_lomac*) ; 

__attribute__((used)) static void
FUNC2(struct mac_lomac *from, struct mac_lomac *to)
{

	if (from->ml_flags & MAC_LOMAC_FLAG_SINGLE) {
		FUNC0(to, sizeof(*to));
		FUNC1(from, to);
	}
}