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
struct mbuf {int dummy; } ;

/* Variables and functions */
 struct mbuf* FUNC0 (struct mbuf*) ; 
 struct mbuf* FUNC1 (struct mbuf*,int) ; 

struct mbuf *
FUNC2(struct mbuf *m, int padval, struct mbuf *last_mbuf)
{
	/* find the last mbuf in chain and pad it */
	struct mbuf *m_at;

	if (last_mbuf != NULL) {
		return (FUNC1(last_mbuf, padval));
	} else {
		for (m_at = m; m_at; m_at = FUNC0(m_at)) {
			if (FUNC0(m_at) == NULL) {
				return (FUNC1(m_at, padval));
			}
		}
	}
	return (NULL);
}