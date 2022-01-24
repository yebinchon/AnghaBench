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
struct TYPE_4__ {int fd; int /*<<< orphan*/  rad; int /*<<< orphan*/  timer; } ;
struct TYPE_3__ {scalar_t__ sendkeylen; int /*<<< orphan*/ * sendkey; scalar_t__ recvkeylen; int /*<<< orphan*/ * recvkey; } ;
struct radius {TYPE_2__ cx; TYPE_1__ mppe; int /*<<< orphan*/ * errstr; int /*<<< orphan*/ * ipv6prefix; int /*<<< orphan*/ * repstr; int /*<<< orphan*/ * msrepstr; int /*<<< orphan*/ * filterid; int /*<<< orphan*/  ipv6routes; int /*<<< orphan*/  routes; scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct radius *r)
{
  r->valid = 0;
  FUNC1(LogDEBUG, "Radius: radius_Destroy\n");
  FUNC4(&r->cx.timer);
  FUNC3(&r->routes);
#ifndef NOINET6
  FUNC3(&r->ipv6routes);
#endif
  FUNC0(r->filterid);
  r->filterid = NULL;
  FUNC0(r->msrepstr);
  r->msrepstr = NULL;
  FUNC0(r->repstr);
  r->repstr = NULL;
#ifndef NOINET6
  FUNC0(r->ipv6prefix);
  r->ipv6prefix = NULL;
#endif
  FUNC0(r->errstr);
  r->errstr = NULL;
  FUNC0(r->mppe.recvkey);
  r->mppe.recvkey = NULL;
  r->mppe.recvkeylen = 0;
  FUNC0(r->mppe.sendkey);
  r->mppe.sendkey = NULL;
  r->mppe.sendkeylen = 0;
  if (r->cx.fd != -1) {
    r->cx.fd = -1;
    FUNC2(r->cx.rad);
  }
}