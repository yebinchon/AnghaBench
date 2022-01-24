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
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct TYPE_4__ {scalar_t__ seq; } ;
struct mp {TYPE_1__ out; scalar_t__ peer_is12bit; } ;
struct mbuf {int dummy; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_6__ {TYPE_2__ fsm; } ;
struct link {int /*<<< orphan*/  name; TYPE_3__ ccp; } ;
struct bundle {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct link*) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  PROTO_MP ; 
 scalar_t__ ST_OPENED ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct link*,struct mbuf*,struct bundle*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 struct mbuf* FUNC7 (struct mbuf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,char*) ; 

__attribute__((used)) static void
FUNC10(struct mp *mp, struct bundle *bundle, struct link *l,
          struct mbuf *m, u_int32_t begin, u_int32_t end)
{
  char prepend[4];

  /* Stuff an MP header on the front of our packet and send it */

  if (mp->peer_is12bit) {
    u_int16_t val;

    val = (begin << 15) | (end << 14) | (u_int16_t)mp->out.seq;
    FUNC9(&val, prepend);
    m = FUNC7(m, prepend, 2, 0);
  } else {
    u_int32_t val;

    val = (begin << 31) | (end << 30) | (u_int32_t)mp->out.seq;
    FUNC8(&val, prepend);
    m = FUNC7(m, prepend, 4, 0);
  }
  if (FUNC4(LogDEBUG))
    FUNC5(LogDEBUG, "MP[frag %d]: Send %zd bytes on link `%s'\n",
               mp->out.seq, FUNC6(m), l->name);
  mp->out.seq = FUNC2(mp->peer_is12bit, mp->out.seq);

  if (l->ccp.fsm.state != ST_OPENED && FUNC1(&l->ccp)) {
    FUNC5(LogPHASE, "%s: Not transmitting... waiting for CCP\n", l->name);
    return;
  }

  FUNC3(l, m, bundle, FUNC0(l) - 1, PROTO_MP);
}