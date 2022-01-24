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
struct mbuf {size_t m_len; int m_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 struct mbuf* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

struct mbuf *
FUNC3(struct mbuf *bp, void *v, size_t len)
{
  int nb;
  u_char *ptr = v;

  while (bp && len > 0) {
    if (len > bp->m_len)
      nb = bp->m_len;
    else
      nb = len;
    if (nb) {
      FUNC2(ptr, FUNC0(bp), nb);
      ptr += nb;
      bp->m_len -= nb;
      len -= nb;
      bp->m_offset += nb;
    }
    if (bp->m_len == 0)
      bp = FUNC1(bp);
  }

  while (bp && bp->m_len == 0)
    bp = FUNC1(bp);

  return bp;
}