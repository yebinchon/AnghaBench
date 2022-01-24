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
typedef  int u_int16_t ;
struct mdchain {int /*<<< orphan*/ * md_top; } ;
struct mbuf {int /*<<< orphan*/  m_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int FUNC1 (struct mbuf*,struct mbuf**) ; 
 struct mbuf* FUNC2 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mdchain*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC4(struct mbuf *mtop, u_int16_t offset, u_int16_t count,
	struct mdchain *mdp)
{
	struct mbuf *m, *m0;
	int len;

	m0 = FUNC2(mtop, offset, M_WAITOK);
	len = FUNC1(m0, &m);
	m->m_len -= len - count;
	if (mdp->md_top == NULL) {
		FUNC3(mdp, m0);
	} else
		FUNC0(mdp->md_top, m0);
	return 0;
}