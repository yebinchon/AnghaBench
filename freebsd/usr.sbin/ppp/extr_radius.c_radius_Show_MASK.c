#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sendkey; scalar_t__ recvkey; int /*<<< orphan*/  types; int /*<<< orphan*/  policy; } ;
struct TYPE_3__ {char* file; } ;
struct radius {char* repstr; char* msrepstr; char* errstr; scalar_t__ ipv6routes; scalar_t__ routes; TYPE_2__ mppe; scalar_t__ vj; int /*<<< orphan*/  mtu; int /*<<< orphan*/  mask; int /*<<< orphan*/  ip; scalar_t__ valid; TYPE_1__ cfg; } ;
struct prompt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct prompt*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct prompt*,scalar_t__,char*,int) ; 

void
FUNC5(struct radius *r, struct prompt *p)
{
  FUNC1(p, " Radius config:     %s",
                *r->cfg.file ? r->cfg.file : "none");
  if (r->valid) {
    FUNC1(p, "\n                IP: %s\n", FUNC0(r->ip));
    FUNC1(p, "           Netmask: %s\n", FUNC0(r->mask));
    FUNC1(p, "               MTU: %lu\n", r->mtu);
    FUNC1(p, "                VJ: %sabled\n", r->vj ? "en" : "dis");
    FUNC1(p, "           Message: %s\n", r->repstr ? r->repstr : "");
    FUNC1(p, "   MPPE Enc Policy: %s\n",
                  FUNC2(r->mppe.policy));
    FUNC1(p, "    MPPE Enc Types: %s\n",
                  FUNC3(r->mppe.types));
    FUNC1(p, "     MPPE Recv Key: %seceived\n",
                  r->mppe.recvkey ? "R" : "Not r");
    FUNC1(p, "     MPPE Send Key: %seceived\n",
                  r->mppe.sendkey ? "R" : "Not r");
    FUNC1(p, " MS-CHAP2-Response: %s\n",
                  r->msrepstr ? r->msrepstr : "");
    FUNC1(p, "     Error Message: %s\n", r->errstr ? r->errstr : "");
    if (r->routes)
      FUNC4(p, r->routes, "            Routes", 16);
#ifndef NOINET6
    if (r->ipv6routes)
      FUNC4(p, r->ipv6routes, "            IPv6 Routes", 16);
#endif
  } else
    FUNC1(p, " (not authenticated)\n");
}