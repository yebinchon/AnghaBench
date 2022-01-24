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
struct secpolicy {int dummy; } ;
struct mbuf {size_t m_len; int /*<<< orphan*/  m_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 size_t FUNC0 (struct secpolicy*) ; 
 scalar_t__ FUNC1 (struct secpolicy*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mbuf *
FUNC5(struct secpolicy *sp)
{
	struct mbuf *m;
	size_t tlen;

	tlen = FUNC0(sp);
	m = FUNC4(tlen, M_NOWAIT, MT_DATA, 0);
	if (m == NULL)
		return (NULL);
	FUNC2(m, tlen);
	m->m_len = tlen;
	if (FUNC1(sp, m->m_data, &tlen) != 0) {
		FUNC3(m);
		return (NULL);
	}
	return (m);
}