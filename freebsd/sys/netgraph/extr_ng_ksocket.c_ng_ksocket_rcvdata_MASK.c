#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sa_tag {scalar_t__ id; struct sockaddr sa; } ;
struct mbuf {int m_flags; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_3__ {struct socket* so; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOBUFS ; 
 int M_BCAST ; 
 int M_MCAST ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  NGM_KSOCKET_COOKIE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NG_KSOCKET_TAG_SOCKADDR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  caddr_t ; 
 struct thread* curthread ; 
 struct mbuf* FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 scalar_t__ FUNC8 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct socket* const,struct sockaddr*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  uint32_t ; 

__attribute__((used)) static int
FUNC11(hook_p hook, item_p item)
{
	struct thread *td = curthread;	/* XXX broken */
	const node_p node = FUNC3(hook);
	const priv_p priv = FUNC5(node);
	struct socket *const so = priv->so;
	struct sockaddr *sa = NULL;
	int error;
	struct mbuf *m;
#ifdef ALIGNED_POINTER
	struct mbuf *n;
#endif /* ALIGNED_POINTER */
	struct sa_tag *stag;

	/* Extract data */
	FUNC1(item, m);
	FUNC2(item);
#ifdef ALIGNED_POINTER
	if (!ALIGNED_POINTER(mtod(m, caddr_t), uint32_t)) {
		n = m_defrag(m, M_NOWAIT);
		if (n == NULL) {
			m_freem(m);
			return (ENOBUFS);
		}
		m = n;
	}
#endif /* ALIGNED_POINTER */
	/*
	 * Look if socket address is stored in packet tags.
	 * If sockaddr is ours, or provided by a third party (zero id),
	 * then we accept it.
	 */
	if (((stag = (struct sa_tag *)FUNC8(m, NGM_KSOCKET_COOKIE,
	    NG_KSOCKET_TAG_SOCKADDR, NULL)) != NULL) &&
	    (stag->id == FUNC4(node) || stag->id == 0))
		sa = &stag->sa;

	/* Reset specific mbuf flags to prevent addressing problems. */
	m->m_flags &= ~(M_BCAST|M_MCAST);

	/* Send packet */
	error = FUNC10(so, sa, 0, m, 0, 0, td);

	return (error);
}