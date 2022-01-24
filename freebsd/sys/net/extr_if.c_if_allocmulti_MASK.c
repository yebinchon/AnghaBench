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
struct sockaddr {int sa_len; int ifma_refcount; struct sockaddr* ifma_lladdr; struct sockaddr* ifma_addr; int /*<<< orphan*/ * ifma_protospec; struct ifnet* ifma_ifp; } ;
struct ifnet {int dummy; } ;
struct ifmultiaddr {int sa_len; int ifma_refcount; struct ifmultiaddr* ifma_lladdr; struct ifmultiaddr* ifma_addr; int /*<<< orphan*/ * ifma_protospec; struct ifnet* ifma_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IFMADDR ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ifmultiaddr *
FUNC3(struct ifnet *ifp, struct sockaddr *sa, struct sockaddr *llsa,
    int mflags)
{
	struct ifmultiaddr *ifma;
	struct sockaddr *dupsa;

	ifma = FUNC2(sizeof *ifma, M_IFMADDR, mflags |
	    M_ZERO);
	if (ifma == NULL)
		return (NULL);

	dupsa = FUNC2(sa->sa_len, M_IFMADDR, mflags);
	if (dupsa == NULL) {
		FUNC1(ifma, M_IFMADDR);
		return (NULL);
	}
	FUNC0(sa, dupsa, sa->sa_len);
	ifma->ifma_addr = dupsa;

	ifma->ifma_ifp = ifp;
	ifma->ifma_refcount = 1;
	ifma->ifma_protospec = NULL;

	if (llsa == NULL) {
		ifma->ifma_lladdr = NULL;
		return (ifma);
	}

	dupsa = FUNC2(llsa->sa_len, M_IFMADDR, mflags);
	if (dupsa == NULL) {
		FUNC1(ifma->ifma_addr, M_IFMADDR);
		FUNC1(ifma, M_IFMADDR);
		return (NULL);
	}
	FUNC0(llsa, dupsa, llsa->sa_len);
	ifma->ifma_lladdr = dupsa;

	return (ifma);
}