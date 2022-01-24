#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct link {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_6__ {TYPE_1__ fsm; } ;
struct TYPE_5__ {TYPE_3__ ipv6cp; } ;
struct bundle {TYPE_2__ ncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  MB_IPV6IN ; 
 scalar_t__ ST_OPENED ; 
 int FUNC0 (struct bundle*,struct link*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 

struct mbuf *
FUNC5(struct bundle *bundle, struct link *l, struct mbuf *bp)
{
  int nb;

  if (bundle->ncp.ipv6cp.fsm.state != ST_OPENED) {
    FUNC2(LogWARN, "ipv6_Input: IPV6CP not open - packet dropped\n");
    FUNC3(bp);
    return NULL;
  }

  FUNC4(bp, MB_IPV6IN);

  nb = FUNC0(bundle, l, bp, AF_INET6);
  FUNC1(&bundle->ncp.ipv6cp, nb);

  return NULL;
}