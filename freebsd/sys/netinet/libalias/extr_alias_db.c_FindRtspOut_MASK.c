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
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 struct alias_link* FUNC0 (struct libalias*,struct in_addr,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct in_addr FUNC1 (struct libalias*,struct in_addr) ; 
 struct alias_link* FUNC2 (struct libalias*,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int LINK_TCP ; 
 int LINK_UDP ; 

struct alias_link *
FUNC4(struct libalias *la, struct in_addr src_addr,
    struct in_addr dst_addr,
    u_short src_port,
    u_short alias_port,
    u_char proto)
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

	lnk = FUNC2(la, src_addr, dst_addr, src_port, 0, link_type, 1);

	if (lnk == NULL) {
		struct in_addr alias_addr;

		alias_addr = FUNC1(la, src_addr);
		lnk = FUNC0(la, src_addr, dst_addr, alias_addr,
		    src_port, 0, alias_port,
		    link_type);
	}
	return (lnk);
}