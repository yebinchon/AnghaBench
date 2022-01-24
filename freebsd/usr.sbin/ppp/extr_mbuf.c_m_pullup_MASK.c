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
struct mbuf {int m_offset; int /*<<< orphan*/  m_len; int /*<<< orphan*/  m_type; int /*<<< orphan*/ * m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC2 (struct mbuf*) ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct mbuf *
FUNC6(struct mbuf *bp)
{
  /* Put it all in one contigous (aligned) mbuf */

  if (bp != NULL) {
    if (bp->m_next != NULL) {
      struct mbuf *nbp;
      u_char *cp;

      nbp = FUNC3(FUNC4(bp), bp->m_type);

      for (cp = FUNC0(nbp); bp; bp = FUNC2(bp)) {
        FUNC5(cp, FUNC0(bp), bp->m_len);
        cp += bp->m_len;
      }
      bp = nbp;
    }
#ifndef __i386__	/* Do any other archs not care about alignment ? */
    else if ((bp->m_offset & (sizeof(long) - 1)) != 0) {
      FUNC1(FUNC0(bp), bp + 1, bp->m_len);
      bp->m_offset = 0;
    }
#endif
  }

  return bp;
}