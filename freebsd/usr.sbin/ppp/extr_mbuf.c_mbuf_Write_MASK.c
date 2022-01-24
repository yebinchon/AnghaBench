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
struct mbuf {size_t m_len; struct mbuf* m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 size_t FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,int) ; 

void
FUNC3(struct mbuf *bp, const void *ptr, size_t m_len)
{
  size_t plen;
  int nb;

  plen = FUNC1(bp);
  if (plen < m_len)
    m_len = plen;

  while (m_len > 0) {
    nb = (m_len < bp->m_len) ? m_len : bp->m_len;
    FUNC2(FUNC0(bp), ptr, nb);
    m_len -= bp->m_len;
    bp = bp->m_next;
  }
}