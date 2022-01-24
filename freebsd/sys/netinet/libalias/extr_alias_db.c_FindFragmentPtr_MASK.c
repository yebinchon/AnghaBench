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
 struct alias_link* FUNC0 (struct libalias*,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int /*<<< orphan*/  LINK_FRAGMENT_PTR ; 
 int /*<<< orphan*/  NO_DEST_PORT ; 

struct alias_link *
FUNC2(struct libalias *la, struct in_addr dst_addr,
    u_short ip_id)
{

	FUNC1(la);
	return FUNC0(la, dst_addr, la->nullAddress,
	    NO_DEST_PORT, ip_id,
	    LINK_FRAGMENT_PTR, 0);
}