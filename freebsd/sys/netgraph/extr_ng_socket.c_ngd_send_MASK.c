#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr_ng {int sg_len; char* sg_data; } ;
struct sockaddr {int dummy; } ;
struct ngpcb {TYPE_1__* sockdata; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_5__ {int /*<<< orphan*/  nd_hooks; } ;
struct TYPE_4__ {TYPE_2__* node; } ;

/* Variables and functions */
 int EDESTADDRREQ ; 
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int NG_HOOKSIZ ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NG_WAITOK ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char*) ; 
 struct ngpcb* FUNC6 (struct socket*) ; 

__attribute__((used)) static int
FUNC7(struct socket *so, int flags, struct mbuf *m, struct sockaddr *addr,
	 struct mbuf *control, struct thread *td)
{
	struct ngpcb *const pcbp = FUNC6(so);
	struct sockaddr_ng *const sap = (struct sockaddr_ng *) addr;
	int	len, error;
	hook_p  hook = NULL;
	char	hookname[NG_HOOKSIZ];

	if ((pcbp == NULL) || (control != NULL)) {
		error = EINVAL;
		goto release;
	}
	if (pcbp->sockdata == NULL) {
		error = ENOTCONN;
		goto release;
	}

	if (sap == NULL)
		len = 0;		/* Make compiler happy. */
	else
		len = sap->sg_len - 2;

	/*
	 * If the user used any of these ways to not specify an address
	 * then handle specially.
	 */
	if ((sap == NULL) || (len <= 0) || (*sap->sg_data == '\0')) {
		if (FUNC1(pcbp->sockdata->node) != 1) {
			error = EDESTADDRREQ;
			goto release;
		}
		/*
		 * If exactly one hook exists, just use it.
		 * Special case to allow write(2) to work on an ng_socket.
		 */
		hook = FUNC0(&pcbp->sockdata->node->nd_hooks);
	} else {
		if (len >= NG_HOOKSIZ) {
			error = EINVAL;
			goto release;
		}

		/*
		 * chop off the sockaddr header, and make sure it's NUL
		 * terminated
		 */
		FUNC3(sap->sg_data, hookname, len);
		hookname[len] = '\0';

		/* Find the correct hook from 'hookname' */
		hook = FUNC5(pcbp->sockdata->node, hookname);
		if (hook == NULL) {
			error = EHOSTUNREACH;
			goto release;
		}
	}

	/* Send data. */
	FUNC2(error, hook, m, NG_WAITOK);

release:
	if (control != NULL)
		FUNC4(control);
	if (m != NULL)
		FUNC4(m);
	return (error);
}