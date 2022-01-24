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
typedef  int u_char ;
struct libalias {int packetAliasMode; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 struct alias_link* FUNC0 (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct alias_link* FUNC1 (struct libalias*,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct in_addr FUNC2 (struct libalias*,struct in_addr) ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int LINK_TCP ; 
 int LINK_UDP ; 
 int PKT_ALIAS_DENY_INCOMING ; 

struct alias_link *
FUNC4(struct libalias *la, struct in_addr dst_addr,
    struct in_addr alias_addr,
    u_short dst_port,
    u_short alias_port,
    u_char proto,
    int create)
{
	int link_type;
	struct alias_link *lnk;

	FUNC3(la);
	switch (proto) {
	case IPPROTO_UDP:
		link_type = LINK_UDP;
		break;
	case IPPROTO_TCP:
		link_type = LINK_TCP;
		break;
	default:
		return (NULL);
		break;
	}

	lnk = FUNC1(la, dst_addr, alias_addr,
	    dst_port, alias_port,
	    link_type, create);

	if (lnk == NULL && create && !(la->packetAliasMode & PKT_ALIAS_DENY_INCOMING)) {
		struct in_addr target_addr;

		target_addr = FUNC2(la, alias_addr);
		lnk = FUNC0(la, target_addr, dst_addr, alias_addr,
		    alias_port, dst_port, alias_port,
		    link_type);
	}
	return (lnk);
}