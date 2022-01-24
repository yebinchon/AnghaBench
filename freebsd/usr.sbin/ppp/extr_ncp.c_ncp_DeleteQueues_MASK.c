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
struct mp {int /*<<< orphan*/  link; } ;
struct ipcp {struct mqueue* Queue; } ;
struct ipv6cp {struct mqueue* Queue; } ;
struct ncp {struct mp mp; struct ipcp ipcp; struct ipv6cp ipv6cp; } ;
struct mqueue {scalar_t__ top; } ;

/* Variables and functions */
 int FUNC0 (struct ipcp*) ; 
 int FUNC1 (struct ipv6cp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mqueue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct ncp *ncp)
{
#ifndef NOINET6
  struct ipv6cp *ipv6cp = &ncp->ipv6cp;
#endif
  struct ipcp *ipcp = &ncp->ipcp;
  struct mp *mp = &ncp->mp;
  struct mqueue *q;

  for (q = ipcp->Queue; q < ipcp->Queue + FUNC0(ipcp); q++)
    while (q->top)
      FUNC4(FUNC3(q));

#ifndef NOINET6
  for (q = ipv6cp->Queue; q < ipv6cp->Queue + FUNC1(ipv6cp); q++)
    while (q->top)
      FUNC4(FUNC3(q));
#endif

  FUNC2(&mp->link);	/* Usually empty anyway */
}