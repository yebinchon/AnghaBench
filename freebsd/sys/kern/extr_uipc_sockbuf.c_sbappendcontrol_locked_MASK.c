#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockbuf {struct mbuf* sb_mbtail; } ;
struct mbuf {struct mbuf* m_next; } ;
struct TYPE_2__ {struct mbuf* m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 TYPE_1__* FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockbuf*,struct mbuf*) ; 

void
FUNC6(struct sockbuf *sb, struct mbuf *m0,
    struct mbuf *control)
{
	struct mbuf *m, *mlast;

	FUNC3(m0);
	FUNC4(control)->m_next = m0;

	FUNC1(sb);

	for (m = control; m->m_next; m = m->m_next)
		FUNC5(sb, m);
	FUNC5(sb, m);
	mlast = m;
	FUNC2(sb, control);

	sb->sb_mbtail = mlast;
	FUNC0(sb);

	FUNC1(sb);
}