#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct mbuf_ext_pgs {int enc_cnt; TYPE_2__* tls; struct socket* so; struct mbuf* mbuf; } ;
struct TYPE_3__ {struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {int m_flags; TYPE_1__ m_ext; } ;
struct ktls_wq {int running; int /*<<< orphan*/  mtx; int /*<<< orphan*/  head; } ;
struct TYPE_4__ {scalar_t__ mode; size_t wq_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_NOMAP ; 
 int M_NOTREADY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf_ext_pgs*,int /*<<< orphan*/ ) ; 
 scalar_t__ TCP_TLS_MODE_SW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ktls_cnt_on ; 
 struct ktls_wq* ktls_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stailq ; 
 int /*<<< orphan*/  FUNC5 (struct ktls_wq*) ; 

void
FUNC6(struct mbuf *m, struct socket *so, int page_count)
{
	struct mbuf_ext_pgs *pgs;
	struct ktls_wq *wq;
	bool running;

	FUNC0(((m->m_flags & (M_NOMAP | M_NOTREADY)) ==
	    (M_NOMAP | M_NOTREADY)),
	    ("ktls_enqueue: %p not unready & nomap mbuf\n", m));
	FUNC0(page_count != 0, ("enqueueing TLS mbuf with zero page count"));

	pgs = m->m_ext.ext_pgs;

	FUNC0(pgs->tls->mode == TCP_TLS_MODE_SW, ("!SW TLS mbuf"));

	pgs->enc_cnt = page_count;
	pgs->mbuf = m;

	/*
	 * Save a pointer to the socket.  The caller is responsible
	 * for taking an additional reference via soref().
	 */
	pgs->so = so;

	wq = &ktls_wq[pgs->tls->wq_index];
	FUNC3(&wq->mtx);
	FUNC1(&wq->head, pgs, stailq);
	running = wq->running;
	FUNC4(&wq->mtx);
	if (!running)
		FUNC5(wq);
	FUNC2(ktls_cnt_on, 1);
}