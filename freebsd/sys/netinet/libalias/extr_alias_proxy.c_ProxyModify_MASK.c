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
struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
#define  PROXY_TYPE_ENCODE_IPHDR 129 
#define  PROXY_TYPE_ENCODE_TCPSTREAM 128 
 int /*<<< orphan*/  FUNC1 (struct ip*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct alias_link*,struct ip*,int) ; 

void
FUNC3(struct libalias *la, struct alias_link *lnk,
    struct ip *pip,
    int maxpacketsize,
    int proxy_type)
{

	FUNC0(la);
	(void)la;

	switch (proxy_type) {
		case PROXY_TYPE_ENCODE_IPHDR:
		FUNC1(pip, maxpacketsize);
		break;

	case PROXY_TYPE_ENCODE_TCPSTREAM:
		FUNC2(lnk, pip, maxpacketsize);
		break;
	}
}