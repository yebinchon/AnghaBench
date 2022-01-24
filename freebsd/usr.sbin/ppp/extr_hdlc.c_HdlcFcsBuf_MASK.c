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
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {int m_len; struct mbuf* m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct mbuf*) ; 
 int* fcstab ; 
 int FUNC1 (struct mbuf*) ; 

__attribute__((used)) static inline u_short
FUNC2(u_short fcs, struct mbuf *m)
{
  int len;
  u_char *pos, *end;

  len = FUNC1(m);
  pos = FUNC0(m);
  end = pos + m->m_len;
  while (len--) {
    fcs = (fcs >> 8) ^ fcstab[(fcs ^ *pos++) & 0xff];
    if (pos == end && len) {
      m = m->m_next;
      pos = FUNC0(m);
      end = pos + m->m_len;
    }
  }
  return (fcs);
}