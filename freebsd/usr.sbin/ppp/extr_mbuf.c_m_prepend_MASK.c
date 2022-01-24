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
typedef  size_t u_short ;
struct mbuf {size_t m_offset; size_t m_len; struct mbuf* m_next; int /*<<< orphan*/  m_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_UNKNOWN ; 
 struct mbuf* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,void const*,size_t) ; 

struct mbuf *
FUNC3(struct mbuf *bp, const void *ptr, size_t len, u_short extra)
{
  struct mbuf *head;

  if (bp && bp->m_offset) {
    if (bp->m_offset >= len) {
      bp->m_offset -= len;
      bp->m_len += len;
      if (ptr)
        FUNC2(FUNC0(bp), ptr, len);
      return bp;
    }
    len -= bp->m_offset;
    if (ptr)
      FUNC2(bp + 1, (const char *)ptr + len, bp->m_offset);
    bp->m_len += bp->m_offset;
    bp->m_offset = 0;
  }

  head = FUNC1(len + extra, bp ? bp->m_type : MB_UNKNOWN);
  head->m_offset = extra;
  head->m_len -= extra;
  if (ptr)
    FUNC2(FUNC0(head), ptr, len);
  head->m_next = bp;

  return head;
}