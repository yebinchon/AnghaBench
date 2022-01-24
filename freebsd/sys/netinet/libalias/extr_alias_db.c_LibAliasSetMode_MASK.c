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
struct libalias {unsigned int packetAliasMode; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 unsigned int PKT_ALIAS_LOG ; 
 unsigned int PKT_ALIAS_PUNCH_FW ; 
 int /*<<< orphan*/  FUNC4 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC5 (struct libalias*) ; 

unsigned int
FUNC6(
    struct libalias *la,
    unsigned int flags,		/* Which state to bring flags to */
    unsigned int mask		/* Mask of which flags to affect (use 0 to
				 * do a probe for flag values) */
)
{
	int res = -1;

	FUNC2(la);
/* Enable logging? */
	if (flags & mask & PKT_ALIAS_LOG) {
		/* Do the enable */
		if (FUNC0(la) == ENOMEM)
			goto getout;
	} else
/* _Disable_ logging? */
	if (~flags & mask & PKT_ALIAS_LOG) {
		FUNC4(la);
	}
#ifndef NO_FW_PUNCH
/* Start punching holes in the firewall? */
	if (flags & mask & PKT_ALIAS_PUNCH_FW) {
		FUNC1(la);
	} else
/* Stop punching holes in the firewall? */
	if (~flags & mask & PKT_ALIAS_PUNCH_FW) {
		FUNC5(la);
	}
#endif

/* Other flags can be set/cleared without special action */
	la->packetAliasMode = (flags & mask) | (la->packetAliasMode & ~mask);
	res = la->packetAliasMode;
getout:
	FUNC3(la);
	return (res);
}