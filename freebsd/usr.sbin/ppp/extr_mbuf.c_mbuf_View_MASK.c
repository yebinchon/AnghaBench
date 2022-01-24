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
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {size_t m_len; struct mbuf* m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

size_t
FUNC2(struct mbuf *bp, void *v, size_t len)
{
  size_t nb, l = len;
  u_char *ptr = v;

  while (bp && l > 0) {
    if (l > bp->m_len)
      nb = bp->m_len;
    else
      nb = l;
    FUNC1(ptr, FUNC0(bp), nb);
    ptr += nb;
    l -= nb;
    bp = bp->m_next;
  }

  return len - l;
}