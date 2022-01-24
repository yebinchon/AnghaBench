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
struct ifnet {int if_flags; int if_mtu; int /*<<< orphan*/  if_hdrlen; int /*<<< orphan*/  if_output; int /*<<< orphan*/  if_ioctl; } ;
struct if_clone {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_PFLOG ; 
 int EEXIST ; 
 int ENOSPC ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFF_UP ; 
 int /*<<< orphan*/  IFT_PFLOG ; 
 int /*<<< orphan*/  PFLOG_HDRLEN ; 
 struct ifnet* V_pflog_if ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 struct ifnet* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ipfw_bpf_ioctl ; 
 int /*<<< orphan*/  ipfw_bpf_output ; 
 int /*<<< orphan*/  ipfwlogname ; 

__attribute__((used)) static int
FUNC7(struct if_clone *ifc, int unit, caddr_t params)
{
	struct ifnet *ifp;

	ifp = FUNC2(IFT_PFLOG);
	if (ifp == NULL)
		return (ENOSPC);
	FUNC6(ifp, ipfwlogname, unit);
	ifp->if_flags = IFF_UP | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_mtu = 65536;
	ifp->if_ioctl = ipfw_bpf_ioctl;
	ifp->if_output = ipfw_bpf_output;
	ifp->if_hdrlen = PFLOG_HDRLEN;
	FUNC3(ifp);
	FUNC0(ifp, DLT_PFLOG, PFLOG_HDRLEN);
	if (V_pflog_if != NULL) {
		FUNC1(ifp);
		FUNC4(ifp);
		FUNC5(ifp);
		return (EEXIST);
	}
	V_pflog_if = ifp;
	return (0);
}