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
struct sockaddr_dl {int sdl_len; } ;
struct sockaddr {int dummy; } ;
struct ifnet {int (* if_resolvemulti ) (struct ifnet*,struct sockaddr**,struct sockaddr*) ;int /*<<< orphan*/  if_addmultitask; int /*<<< orphan*/  (* if_ioctl ) (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  if_multiaddrs; } ;
struct ifmultiaddr {int /*<<< orphan*/  ifma_flags; struct ifmultiaddr* ifma_llifma; int /*<<< orphan*/  ifma_refcount; } ;
typedef  int /*<<< orphan*/  sdl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ifmultiaddr*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IFMA_F_ENQUEUED ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  RTM_NEWMADDR ; 
 int /*<<< orphan*/  SIOCADDMULTI ; 
 scalar_t__ FUNC5 () ; 
 struct ifmultiaddr* FUNC6 (struct ifnet*,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct ifmultiaddr* FUNC7 (struct ifnet*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  ifma_link ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ifmultiaddr*) ; 
 int FUNC11 (struct ifnet*,struct sockaddr**,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

int
FUNC14(struct ifnet *ifp, struct sockaddr *sa,
    struct ifmultiaddr **retifma)
{
	struct ifmultiaddr *ifma, *ll_ifma;
	struct sockaddr *llsa;
	struct sockaddr_dl sdl;
	int error;

#ifdef INET
	IN_MULTI_LIST_UNLOCK_ASSERT();
#endif
#ifdef INET6
	IN6_MULTI_LIST_UNLOCK_ASSERT();
#endif
	/*
	 * If the address is already present, return a new reference to it;
	 * otherwise, allocate storage and set up a new address.
	 */
	FUNC1(ifp);
	ifma = FUNC7(ifp, sa);
	if (ifma != NULL) {
		ifma->ifma_refcount++;
		if (retifma != NULL)
			*retifma = ifma;
		FUNC2(ifp);
		return (0);
	}

	/*
	 * The address isn't already present; resolve the protocol address
	 * into a link layer address, and then look that up, bump its
	 * refcount or allocate an ifma for that also.
	 * Most link layer resolving functions returns address data which
	 * fits inside default sockaddr_dl structure. However callback
	 * can allocate another sockaddr structure, in that case we need to
	 * free it later.
	 */
	llsa = NULL;
	ll_ifma = NULL;
	if (ifp->if_resolvemulti != NULL) {
		/* Provide called function with buffer size information */
		sdl.sdl_len = sizeof(sdl);
		llsa = (struct sockaddr *)&sdl;
		error = ifp->if_resolvemulti(ifp, &llsa, sa);
		if (error)
			goto unlock_out;
	}

	/*
	 * Allocate the new address.  Don't hook it up yet, as we may also
	 * need to allocate a link layer multicast address.
	 */
	ifma = FUNC6(ifp, sa, llsa, M_NOWAIT);
	if (ifma == NULL) {
		error = ENOMEM;
		goto free_llsa_out;
	}

	/*
	 * If a link layer address is found, we'll need to see if it's
	 * already present in the address list, or allocate is as well.
	 * When this block finishes, the link layer address will be on the
	 * list.
	 */
	if (llsa != NULL) {
		ll_ifma = FUNC7(ifp, llsa);
		if (ll_ifma == NULL) {
			ll_ifma = FUNC6(ifp, llsa, NULL, M_NOWAIT);
			if (ll_ifma == NULL) {
				--ifma->ifma_refcount;
				FUNC8(ifma);
				error = ENOMEM;
				goto free_llsa_out;
			}
			ll_ifma->ifma_flags |= IFMA_F_ENQUEUED;
			FUNC0(&ifp->if_multiaddrs, ll_ifma,
			    ifma_link);
		} else
			ll_ifma->ifma_refcount++;
		ifma->ifma_llifma = ll_ifma;
	}

	/*
	 * We now have a new multicast address, ifma, and possibly a new or
	 * referenced link layer address.  Add the primary address to the
	 * ifnet address list.
	 */
	ifma->ifma_flags |= IFMA_F_ENQUEUED;
	FUNC0(&ifp->if_multiaddrs, ifma, ifma_link);

	if (retifma != NULL)
		*retifma = ifma;

	/*
	 * Must generate the message while holding the lock so that 'ifma'
	 * pointer is still valid.
	 */
	FUNC10(RTM_NEWMADDR, ifma);
	FUNC2(ifp);

	/*
	 * We are certain we have added something, so call down to the
	 * interface to let them know about it.
	 */
	if (ifp->if_ioctl != NULL) {
		if (FUNC5())
			(void )(*ifp->if_ioctl)(ifp, SIOCADDMULTI, 0);
		else
			FUNC13(taskqueue_swi, &ifp->if_addmultitask);
	}

	if ((llsa != NULL) && (llsa != (struct sockaddr *)&sdl))
		FUNC9(llsa);

	return (0);

free_llsa_out:
	if ((llsa != NULL) && (llsa != (struct sockaddr *)&sdl))
		FUNC9(llsa);

unlock_out:
	FUNC2(ifp);
	return (error);
}