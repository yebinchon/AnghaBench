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
typedef  int /*<<< orphan*/  u_short ;
struct libalias {int /*<<< orphan*/  nullAddress; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 struct alias_link* FUNC0 (struct libalias*,int /*<<< orphan*/ ,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct alias_link* FUNC1 (struct libalias*,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 
 int /*<<< orphan*/  LINK_FRAGMENT_ID ; 
 int /*<<< orphan*/  NO_DEST_PORT ; 
 int /*<<< orphan*/  NO_SRC_PORT ; 

struct alias_link *
FUNC3(struct libalias *la, struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_short ip_id)
{
	struct alias_link *lnk;

	FUNC2(la);
	lnk = FUNC1(la, dst_addr, alias_addr,
	    NO_DEST_PORT, ip_id,
	    LINK_FRAGMENT_ID, 0);

	if (lnk == NULL) {
		lnk = FUNC0(la, la->nullAddress, dst_addr, alias_addr,
		    NO_SRC_PORT, NO_DEST_PORT, ip_id,
		    LINK_FRAGMENT_ID);
	}
	return (lnk);
}