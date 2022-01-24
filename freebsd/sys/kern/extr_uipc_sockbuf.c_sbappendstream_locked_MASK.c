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
struct sockbuf {scalar_t__ sb_mb; scalar_t__ sb_lastrecord; int /*<<< orphan*/  sb_mbtail; int /*<<< orphan*/ * sb_tls_info; } ;
struct mbuf {int /*<<< orphan*/ * m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_NOTREADY ; 
 int PRUS_NOTREADY ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockbuf*,struct mbuf*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct sockbuf *sb, struct mbuf *m, int flags)
{
	FUNC3(sb);

	FUNC0(m->m_nextpkt == NULL,("sbappendstream 0"));
	FUNC0(sb->sb_mb == sb->sb_lastrecord,("sbappendstream 1"));

	FUNC1(sb);

#ifdef KERN_TLS
	if (sb->sb_tls_info != NULL)
		ktls_seq(sb, m);
#endif

	/* Remove all packet headers and mbuf tags to get a pure data chain. */
	FUNC5(m, 1, flags & PRUS_NOTREADY ? M_NOTREADY : 0);

	FUNC6(sb, m, sb->sb_mbtail);

	sb->sb_lastrecord = sb->sb_mb;
	FUNC2(sb);
}