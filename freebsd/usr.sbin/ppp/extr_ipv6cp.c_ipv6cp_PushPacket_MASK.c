#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u_int32_t ;
struct mqueue {scalar_t__ top; } ;
struct mbuf {int dummy; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_8__ {TYPE_2__ fsm; } ;
struct link {int /*<<< orphan*/  name; TYPE_4__ ccp; } ;
struct TYPE_5__ {scalar_t__ state; struct bundle* bundle; } ;
struct ipv6cp {struct mqueue* Queue; TYPE_1__ fsm; } ;
struct TYPE_7__ {int /*<<< orphan*/  alive; } ;
struct bundle {TYPE_3__ filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC1 (struct ipv6cp*) ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  PROTO_IPV6 ; 
 scalar_t__ ST_OPENED ; 
 int /*<<< orphan*/  FUNC3 (struct bundle*,unsigned int) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipv6cp*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct link*,struct mbuf*,struct bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC8 (struct mqueue*) ; 
 int FUNC9 (struct mbuf*) ; 
 struct mbuf* FUNC10 (struct mbuf*) ; 
 struct mbuf* FUNC11 (struct mbuf*,unsigned int*,int) ; 

int
FUNC12(struct ipv6cp *ipv6cp, struct link *l)
{
  struct bundle *bundle = ipv6cp->fsm.bundle;
  struct mqueue *queue;
  struct mbuf *bp;
  int m_len;
  u_int32_t secs = 0;
  unsigned alivesecs = 0;

  if (ipv6cp->fsm.state != ST_OPENED)
    return 0;

  /*
   * If ccp is not open but is required, do nothing.
   */
  if (l->ccp.fsm.state != ST_OPENED && FUNC4(&l->ccp)) {
    FUNC7(LogPHASE, "%s: Not transmitting... waiting for CCP\n", l->name);
    return 0;
  }

  queue = ipv6cp->Queue + FUNC1(ipv6cp) - 1;
  do {
    if (queue->top) {
      bp = FUNC8(queue);
      bp = FUNC11(bp, &secs, sizeof secs);
      bp = FUNC10(bp);
      m_len = FUNC9(bp);
      if (!FUNC0(FUNC2(bp), AF_INET6, &bundle->filter.alive,
                       &alivesecs)) {
        if (secs == 0)
          secs = alivesecs;
        FUNC3(bundle, secs);
      }
      FUNC6(l, bp, bundle, 0, PROTO_IPV6);
      FUNC5(ipv6cp, m_len);
      return 1;
    }
  } while (queue-- != ipv6cp->Queue);

  return 0;
}