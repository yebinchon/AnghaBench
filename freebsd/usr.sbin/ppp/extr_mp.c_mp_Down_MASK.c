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
struct TYPE_3__ {int /*<<< orphan*/  fsm; } ;
struct TYPE_4__ {TYPE_1__ ccp; } ;
struct mp {scalar_t__ active; int /*<<< orphan*/  peer; struct mbuf* inbufs; TYPE_2__ link; int /*<<< orphan*/  server; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct mp *mp)
{
  if (mp->active) {
    struct mbuf *next;

    /* Stop that ! */
    FUNC2(mp);

    /* Don't want any more of these */
    FUNC3(&mp->server);

    /* CCP goes down with a bang */
    FUNC0(&mp->link.ccp.fsm);

    /* Received fragments go in the bit-bucket */
    while (mp->inbufs) {
      next = mp->inbufs->m_nextpkt;
      FUNC1(mp->inbufs);
      mp->inbufs = next;
    }

    FUNC4(&mp->peer);
    mp->active = 0;
  }
}