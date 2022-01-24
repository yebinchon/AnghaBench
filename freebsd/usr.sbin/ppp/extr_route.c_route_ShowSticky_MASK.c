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
struct sticky_route {int type; int /*<<< orphan*/  gw; int /*<<< orphan*/  dst; struct sticky_route* next; } ;
struct prompt {int dummy; } ;

/* Variables and functions */
 int ROUTE_DSTDNS0 ; 
 int ROUTE_DSTDNS1 ; 
 int ROUTE_DSTHISADDR ; 
 int ROUTE_DSTHISADDR6 ; 
 int ROUTE_DSTMYADDR ; 
 int ROUTE_DSTMYADDR6 ; 
 int ROUTE_GWHISADDR ; 
 int ROUTE_GWHISADDR6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct prompt*,char*,...) ; 
 int FUNC4 (char const*) ; 

void
FUNC5(struct prompt *p, struct sticky_route *r, const char *tag,
                 int indent)
{
  int tlen = FUNC4(tag);

  if (tlen + 2 > indent)
    FUNC3(p, "%s:\n%*s", tag, indent, "");
  else
    FUNC3(p, "%s:%*s", tag, indent - tlen - 1, "");

  for (; r; r = r->next) {
    FUNC3(p, "%*sadd ", tlen ? 0 : indent, "");
    tlen = 0;
    if (r->type & ROUTE_DSTMYADDR)
      FUNC3(p, "MYADDR");
    else if (r->type & ROUTE_DSTMYADDR6)
      FUNC3(p, "MYADDR6");
    else if (r->type & ROUTE_DSTHISADDR)
      FUNC3(p, "HISADDR");
    else if (r->type & ROUTE_DSTHISADDR6)
      FUNC3(p, "HISADDR6");
    else if (r->type & ROUTE_DSTDNS0)
      FUNC3(p, "DNS0");
    else if (r->type & ROUTE_DSTDNS1)
      FUNC3(p, "DNS1");
    else if (FUNC1(&r->dst))
      FUNC3(p, "default");
    else
      FUNC3(p, "%s", FUNC2(&r->dst));

    if (r->type & ROUTE_GWHISADDR)
      FUNC3(p, " HISADDR\n");
    else if (r->type & ROUTE_GWHISADDR6)
      FUNC3(p, " HISADDR6\n");
    else
      FUNC3(p, " %s\n", FUNC0(&r->gw));
  }
}