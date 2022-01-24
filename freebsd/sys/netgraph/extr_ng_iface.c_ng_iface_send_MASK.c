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
struct rm_priotracker {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  if_xname; int /*<<< orphan*/  if_softc; } ;
typedef  int /*<<< orphan*/  sa_family_t ;
typedef  int /*<<< orphan*/  priv_p ;
typedef  int /*<<< orphan*/ * iffam_p ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,struct rm_priotracker*) ; 
 int /*<<< orphan*/ ** FUNC8 (int /*<<< orphan*/  const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC13(struct ifnet *ifp, struct mbuf *m, sa_family_t sa)
{
	struct rm_priotracker priv_tracker;
	const priv_p priv = (priv_p) ifp->if_softc;
	const iffam_p iffam = FUNC9(sa);
	hook_p hook;
	int error;
	int len;

	/* Check address family to determine hook (if known) */
	if (iffam == NULL) {
		FUNC12(m);
		FUNC11(LOG_WARNING, "%s: can't handle af%d\n", ifp->if_xname, sa);
		return (EAFNOSUPPORT);
	}

	/* Copy length before the mbuf gets invalidated. */
	len = m->m_pkthdr.len;

	FUNC6(priv, &priv_tracker);
	hook = *FUNC8(priv, iffam);
	if (hook == NULL) {
		FUNC0(m);
		FUNC7(priv, &priv_tracker);
		return ENETDOWN;
	}
	FUNC1(hook);
	FUNC7(priv, &priv_tracker);

	FUNC3();
	FUNC5(error, hook, m);
	FUNC4();
	FUNC2(hook);

	/* Update stats. */
	if (error == 0) {
		FUNC10(ifp, IFCOUNTER_OBYTES, len);
		FUNC10(ifp, IFCOUNTER_OPACKETS, 1);
	}

	return (error);
}