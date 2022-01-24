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
struct sockbuf {struct mbuf* sb_mb; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 struct mbuf* FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*,struct mbuf*) ; 

void
FUNC4(struct sockbuf *sb)
{
	struct mbuf *m;

	FUNC1(sb);

	m = sb->sb_mb;
	if (m) {
		sb->sb_mb = m->m_nextpkt;
		do {
			FUNC3(sb, m);
			m = FUNC2(m);
		} while (m);
	}
	FUNC0(sb);
}