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
typedef  int /*<<< orphan*/  u_int16_t ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 struct alias_link* FUNC0 (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GET_ALIAS_PORT ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int /*<<< orphan*/  LINK_PPTP ; 

struct alias_link *
FUNC2(struct libalias *la, struct in_addr src_addr,
    struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_int16_t src_call_id)
{
	struct alias_link *lnk;

	FUNC1(la);
	lnk = FUNC0(la, src_addr, dst_addr, alias_addr,
	    src_call_id, 0, GET_ALIAS_PORT,
	    LINK_PPTP);

	return (lnk);
}