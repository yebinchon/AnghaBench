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
struct mbuf {size_t m_size; size_t m_len; struct mbuf* m_next; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,size_t) ; 

struct mbuf *
FUNC2(struct mbuf *bp, const void *v, size_t sz)
{
  struct mbuf *m = bp;

  if (m) {
    while (m->m_next)
      m = m->m_next;
    if (m->m_size - m->m_len >= sz) {
      if (v)
        FUNC1((char *)(m + 1) + m->m_len, v, sz);
      m->m_len += sz;
    } else
      m->m_next = FUNC0(NULL, v, sz, 0);
  } else
    bp = FUNC0(NULL, v, sz, 0);

  return bp;
}