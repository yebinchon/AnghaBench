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
struct mbuf {int m_flags; struct mbuf* m_next; } ;

/* Variables and functions */
 int M_NOMAP ; 
 struct mbuf* FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 struct mbuf* FUNC2 (struct mbuf*) ; 

struct mbuf *
FUNC3(struct mbuf *top)
{
	struct mbuf *m, *next, *prev = NULL;

	prev = NULL;
	for (m = top; m != NULL; m = next) {
		/* m might be freed, so cache the next pointer. */
		next = m->m_next;
		if (m->m_flags & M_NOMAP) {
			if (prev != NULL) {
				/*
				 * Remove 'm' from the new chain so
				 * that the 'top' chain terminates
				 * before 'm' in case 'top' is freed
				 * due to an error.
				 */
				prev->m_next = NULL;
			}
			m = FUNC0(m);
			if (m == NULL) {
				FUNC1(top);
				FUNC1(next);
				return (NULL);
			}
			if (prev == NULL) {
				top = m;
			} else {
				prev->m_next = m;
			}

			/*
			 * Replaced one mbuf with a chain, so we must
			 * find the end of chain.
			 */
			prev = FUNC2(m);
		} else {
			if (prev != NULL) {
				prev->m_next = m;
			}
			prev = m;
		}
	}
	return (top);
}