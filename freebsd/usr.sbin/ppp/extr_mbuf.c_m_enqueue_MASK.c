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
struct mqueue {scalar_t__ len; struct mbuf* top; struct mbuf* last; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long) ; 

void
FUNC1(struct mqueue *queue, struct mbuf *bp)
{
  if (bp != NULL) {
    if (queue->last) {
      queue->last->m_nextpkt = bp;
      queue->last = bp;
    } else
      queue->last = queue->top = bp;
    queue->len++;
    FUNC0(LogDEBUG, "m_enqueue: len = %lu\n", (unsigned long)queue->len);
  }
}