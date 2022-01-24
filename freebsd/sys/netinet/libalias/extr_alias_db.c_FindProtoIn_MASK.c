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
typedef  int /*<<< orphan*/  u_char ;
struct libalias {int packetAliasMode; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 struct alias_link* FUNC0 (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct alias_link* FUNC1 (struct libalias*,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct in_addr FUNC2 (struct libalias*,struct in_addr) ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int /*<<< orphan*/  NO_DEST_PORT ; 
 int /*<<< orphan*/  NO_SRC_PORT ; 
 int PKT_ALIAS_DENY_INCOMING ; 

struct alias_link *
FUNC4(struct libalias *la, struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_char proto)
{
	struct alias_link *lnk;

	FUNC3(la);
	lnk = FUNC1(la, dst_addr, alias_addr,
	    NO_DEST_PORT, 0,
	    proto, 1);

	if (lnk == NULL && !(la->packetAliasMode & PKT_ALIAS_DENY_INCOMING)) {
		struct in_addr target_addr;

		target_addr = FUNC2(la, alias_addr);
		lnk = FUNC0(la, target_addr, dst_addr, alias_addr,
		    NO_SRC_PORT, NO_DEST_PORT, 0,
		    proto);
	}
	return (lnk);
}