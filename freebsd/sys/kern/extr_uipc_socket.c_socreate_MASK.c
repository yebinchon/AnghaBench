#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_9__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_8__ {int /*<<< orphan*/  si_note; } ;
struct socket {int so_type; int /*<<< orphan*/  so_vnet; TYPE_4__ so_wrsel; TYPE_3__ so_rdsel; struct protosw* so_proto; scalar_t__ so_fibnum; int /*<<< orphan*/  so_cred; } ;
struct protosw {int pr_type; TYPE_5__* pr_usrreqs; TYPE_1__* pr_domain; } ;
struct TYPE_10__ {int (* pru_attach ) (struct socket*,int,struct thread*) ;} ;
struct TYPE_7__ {scalar_t__ p_fibnum; } ;
struct TYPE_6__ {scalar_t__ dom_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EAFNOSUPPORT ; 
 int ENOBUFS ; 
 int EPROTONOSUPPORT ; 
 int EPROTOTYPE ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ PF_ROUTE ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,struct socket*) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 struct protosw* FUNC7 (int,int,int) ; 
 struct protosw* FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (struct ucred*,scalar_t__) ; 
 int FUNC10 (struct socket*,int,struct thread*) ; 
 int /*<<< orphan*/  so_rdknl_assert_locked ; 
 int /*<<< orphan*/  so_rdknl_assert_unlocked ; 
 int /*<<< orphan*/  so_rdknl_lock ; 
 int /*<<< orphan*/  so_rdknl_unlock ; 
 int /*<<< orphan*/  so_wrknl_assert_locked ; 
 int /*<<< orphan*/  so_wrknl_assert_unlocked ; 
 int /*<<< orphan*/  so_wrknl_lock ; 
 int /*<<< orphan*/  so_wrknl_unlock ; 
 struct socket* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*) ; 
 int /*<<< orphan*/  FUNC13 (struct socket*) ; 
 int FUNC14 (struct socket*,int,struct thread*) ; 

int
FUNC15(int dom, struct socket **aso, int type, int proto,
    struct ucred *cred, struct thread *td)
{
	struct protosw *prp;
	struct socket *so;
	int error;

	if (proto)
		prp = FUNC7(dom, proto, type);
	else
		prp = FUNC8(dom, type);

	if (prp == NULL) {
		/* No support for domain. */
		if (FUNC6(dom) == NULL)
			return (EAFNOSUPPORT);
		/* No support for socket type. */
		if (proto == 0 && type != 0)
			return (EPROTOTYPE);
		return (EPROTONOSUPPORT);
	}
	if (prp->pr_usrreqs->pru_attach == NULL ||
	    prp->pr_usrreqs->pru_attach == pru_attach_notsupp)
		return (EPROTONOSUPPORT);

	if (FUNC9(cred, prp->pr_domain->dom_family) != 0)
		return (EPROTONOSUPPORT);

	if (prp->pr_type != type)
		return (EPROTOTYPE);
	so = FUNC11(FUNC0(cred));
	if (so == NULL)
		return (ENOBUFS);

	so->so_type = type;
	so->so_cred = FUNC3(cred);
	if ((prp->pr_domain->dom_family == PF_INET) ||
	    (prp->pr_domain->dom_family == PF_INET6) ||
	    (prp->pr_domain->dom_family == PF_ROUTE))
		so->so_fibnum = td->td_proc->p_fibnum;
	else
		so->so_fibnum = 0;
	so->so_proto = prp;
#ifdef MAC
	mac_socket_create(cred, so);
#endif
	FUNC4(&so->so_rdsel.si_note, so, so_rdknl_lock, so_rdknl_unlock,
	    so_rdknl_assert_locked, so_rdknl_assert_unlocked);
	FUNC4(&so->so_wrsel.si_note, so, so_wrknl_lock, so_wrknl_unlock,
	    so_wrknl_assert_locked, so_wrknl_assert_unlocked);
	/*
	 * Auto-sizing of socket buffers is managed by the protocols and
	 * the appropriate flags must be set in the pru_attach function.
	 */
	FUNC2(so->so_vnet);
	error = (*prp->pr_usrreqs->pru_attach)(so, proto, td);
	FUNC1();
	if (error) {
		FUNC12(so);
		return (error);
	}
	FUNC13(so);
	*aso = so;
	return (0);
}