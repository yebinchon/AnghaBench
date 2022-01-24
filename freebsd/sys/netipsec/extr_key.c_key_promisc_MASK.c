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
struct socket {int dummy; } ;
struct sadb_msghdr {TYPE_1__* msg; } ;
struct sadb_msg {int dummy; } ;
struct mbuf {int dummy; } ;
struct keycb {int kp_promisc; } ;
struct TYPE_2__ {int sadb_msg_satype; scalar_t__ sadb_msg_errno; int /*<<< orphan*/  sadb_msg_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KEY_SENDUP_ALL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct socket*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct socket*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 scalar_t__ FUNC7 (struct socket*) ; 

__attribute__((used)) static int
FUNC8(struct socket *so, struct mbuf *m, const struct sadb_msghdr *mhp)
{
	int olen;

	FUNC0(so != NULL, ("null socket"));
	FUNC0(m != NULL, ("null mbuf"));
	FUNC0(mhp != NULL, ("null msghdr"));
	FUNC0(mhp->msg != NULL, ("null msg"));

	olen = FUNC2(mhp->msg->sadb_msg_len);

	if (olen < sizeof(struct sadb_msg)) {
#if 1
		return FUNC3(so, m, EINVAL);
#else
		m_freem(m);
		return 0;
#endif
	} else if (olen == sizeof(struct sadb_msg)) {
		/* enable/disable promisc mode */
		struct keycb *kp;

		if ((kp = (struct keycb *)FUNC7(so)) == NULL)
			return FUNC3(so, m, EINVAL);
		mhp->msg->sadb_msg_errno = 0;
		switch (mhp->msg->sadb_msg_satype) {
		case 0:
		case 1:
			kp->kp_promisc = mhp->msg->sadb_msg_satype;
			break;
		default:
			return FUNC3(so, m, EINVAL);
		}

		/* send the original message back to everyone */
		mhp->msg->sadb_msg_errno = 0;
		return FUNC4(so, m, KEY_SENDUP_ALL);
	} else {
		/* send packet as is */

		FUNC5(m, FUNC1(sizeof(struct sadb_msg)));

		/* TODO: if sadb_msg_seq is specified, send to specific pid */
		return FUNC4(so, m, KEY_SENDUP_ALL);
	}
}