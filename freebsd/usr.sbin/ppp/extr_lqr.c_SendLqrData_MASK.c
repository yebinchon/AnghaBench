#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int m_len; int m_offset; } ;
struct lqrdata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  link; int /*<<< orphan*/  bundle; } ;
struct lcp {TYPE_1__ fsm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MB_LQROUT ; 
 int /*<<< orphan*/  PROTO_LQR ; 
 int FUNC1 (struct lcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lcp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct lcp *lcp)
{
  struct mbuf *bp;
  int extra;

  extra = FUNC4(lcp, PROTO_LQR) +
          FUNC1(lcp, PROTO_LQR);
  bp = FUNC3(sizeof(struct lqrdata) + extra, MB_LQROUT);
  bp->m_len -= extra;
  bp->m_offset += extra;

  /*
   * Send on the highest priority queue.  We send garbage - the real data
   * is written by lqr_LayerPush() where we know how to fill in all the
   * fields.  Note, lqr_LayerPush() ``knows'' that we're pushing onto the
   * highest priority queue, and factors out packet & octet values from
   * other queues!
   */
  FUNC2(lcp->fsm.link, bp, lcp->fsm.bundle,
                  FUNC0(lcp->fsm.link) - 1, PROTO_LQR);
}