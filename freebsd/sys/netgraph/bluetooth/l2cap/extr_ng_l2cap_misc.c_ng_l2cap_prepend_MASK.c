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
struct mbuf {int m_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC1 (struct mbuf*,int) ; 

struct mbuf *
FUNC2(struct mbuf *m, int size)
{
	FUNC0(m, size, M_NOWAIT);
	if (m == NULL || (m->m_len < size && (m = FUNC1(m, size)) == NULL))
		return (NULL);

	return (m);
}