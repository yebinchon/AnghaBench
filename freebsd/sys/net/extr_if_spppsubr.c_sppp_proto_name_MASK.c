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
typedef  scalar_t__ u_short ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  PPP_CHAP 132 
#define  PPP_IPCP 131 
#define  PPP_IPV6CP 130 
#define  PPP_LCP 129 
#define  PPP_PAP 128 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC1(u_short proto)
{
	static char buf[12];
	switch (proto) {
	case PPP_LCP:	return "lcp";
	case PPP_IPCP:	return "ipcp";
	case PPP_PAP:	return "pap";
	case PPP_CHAP:	return "chap";
	case PPP_IPV6CP: return "ipv6cp";
	}
	FUNC0(buf, sizeof(buf), "proto/0x%x", (unsigned)proto);
	return buf;
}