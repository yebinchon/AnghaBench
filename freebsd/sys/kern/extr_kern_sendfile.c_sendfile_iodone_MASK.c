#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_page_t ;
struct socket {TYPE_5__* so_proto; int /*<<< orphan*/  so_error; int /*<<< orphan*/  so_vnet; } ;
struct sf_io {int error; int /*<<< orphan*/  npages; TYPE_6__* m; TYPE_3__* tls; int /*<<< orphan*/  nios; struct socket* so; } ;
struct TYPE_10__ {scalar_t__ ext_type; TYPE_1__* ext_pgs; } ;
struct TYPE_14__ {int m_flags; TYPE_2__ m_ext; } ;
struct TYPE_13__ {TYPE_4__* pr_usrreqs; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* pru_ready ) (struct socket*,TYPE_6__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pru_abort ) (struct socket*) ;} ;
struct TYPE_11__ {scalar_t__ mode; } ;
struct TYPE_9__ {TYPE_3__* tls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ EXT_PGS ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int M_EXT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 scalar_t__ TCP_TLS_MODE_SW ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ bogus_page ; 
 int /*<<< orphan*/  FUNC5 (struct sf_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static void
FUNC13(void *arg, vm_page_t *pg, int count, int error)
{
	struct sf_io *sfio = arg;
	struct socket *so = sfio->so;

	for (int i = 0; i < count; i++)
		if (pg[i] != bogus_page)
			FUNC12(pg[i]);

	if (error)
		sfio->error = error;

	if (!FUNC8(&sfio->nios))
		return;

	if (FUNC4(sfio->error && sfio->m == NULL)) {
		/*
		 * I/O operation failed, but pru_send hadn't been executed -
		 * nothing had been sent to the socket.  The syscall has
		 * returned error to the user.
		 */
		FUNC5(sfio, M_TEMP);
		return;
	}

#if defined(KERN_TLS) && defined(INVARIANTS)
	if ((sfio->m->m_flags & M_EXT) != 0 &&
	    sfio->m->m_ext.ext_type == EXT_PGS)
		KASSERT(sfio->tls == sfio->m->m_ext.ext_pgs->tls,
		    ("TLS session mismatch"));
	else
		KASSERT(sfio->tls == NULL,
		    ("non-ext_pgs mbuf with TLS session"));
#endif
	FUNC1(so->so_vnet);
	if (FUNC4(sfio->error)) {
		/*
		 * I/O operation failed.  The state of data in the socket
		 * is now inconsistent, and all what we can do is to tear
		 * it down. Protocol abort method would tear down protocol
		 * state, free all ready mbufs and detach not ready ones.
		 * We will free the mbufs corresponding to this I/O manually.
		 *
		 * The socket would be marked with EIO and made available
		 * for read, so that application receives EIO on next
		 * syscall and eventually closes the socket.
		 */
		so->so_proto->pr_usrreqs->pru_abort(so);
		so->so_error = EIO;

		FUNC7(sfio->m, sfio->npages);
#ifdef KERN_TLS
	} else if (sfio->tls != NULL && sfio->tls->mode == TCP_TLS_MODE_SW) {
		/*
		 * I/O operation is complete, but we still need to
		 * encrypt.  We cannot do this in the interrupt thread
		 * of the disk controller, so forward the mbufs to a
		 * different thread.
		 *
		 * Donate the socket reference from sfio to rather
		 * than explicitly invoking soref().
		 */
		ktls_enqueue(sfio->m, so, sfio->npages);
		goto out_with_ref;
#endif
	} else
		(void)(so->so_proto->pr_usrreqs->pru_ready)(so, sfio->m,
		    sfio->npages);

	FUNC3(so);
	FUNC9(so);
#ifdef KERN_TLS
out_with_ref:
#endif
	FUNC0();
	FUNC5(sfio, M_TEMP);
}