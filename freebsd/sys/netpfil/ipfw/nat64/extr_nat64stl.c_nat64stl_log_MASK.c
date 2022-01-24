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
typedef  scalar_t__ uint32_t ;
struct pfloghdr {char* ruleset; int /*<<< orphan*/  ifname; void* subrulenr; void* rulenr; int /*<<< orphan*/  dir; int /*<<< orphan*/  action; int /*<<< orphan*/  af; int /*<<< orphan*/  length; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  sa_family_t ;

/* Variables and functions */
 int /*<<< orphan*/  PFLOG_HDRLEN ; 
 int /*<<< orphan*/  PFLOG_REAL_HDRLEN ; 
 int /*<<< orphan*/  PF_IN ; 
 int /*<<< orphan*/  PF_NAT ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pfloghdr*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct pfloghdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct pfloghdr *plog, struct mbuf *m, sa_family_t family,
    uint32_t kidx)
{
	static uint32_t pktid = 0;

	FUNC2(plog, 0, sizeof(*plog));
	plog->length = PFLOG_REAL_HDRLEN;
	plog->af = family;
	plog->action = PF_NAT;
	plog->dir = PF_IN;
	plog->rulenr = FUNC0(kidx);
	pktid++;
	plog->subrulenr = FUNC0(pktid);
	plog->ruleset[0] = '\0';
	FUNC3(plog->ifname, "NAT64STL", sizeof(plog->ifname));
	FUNC1(plog, PFLOG_HDRLEN, m);
}