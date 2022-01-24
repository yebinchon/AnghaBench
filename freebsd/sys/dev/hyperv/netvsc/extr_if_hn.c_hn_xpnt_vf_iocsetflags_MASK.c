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
struct ifreq {int ifr_flags; int ifr_flagshigh; int /*<<< orphan*/  ifr_name; } ;
struct ifnet {int if_flags; int (* if_ioctl ) (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  if_xname; } ;
struct hn_softc {struct ifnet* hn_vf_ifp; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct hn_softc *sc)
{
	struct ifnet *vf_ifp;
	struct ifreq ifr;

	FUNC0(sc);
	vf_ifp = sc->hn_vf_ifp;

	FUNC1(&ifr, 0, sizeof(ifr));
	FUNC2(ifr.ifr_name, vf_ifp->if_xname, sizeof(ifr.ifr_name));
	ifr.ifr_flags = vf_ifp->if_flags & 0xffff;
	ifr.ifr_flagshigh = vf_ifp->if_flags >> 16;
	return (vf_ifp->if_ioctl(vf_ifp, SIOCSIFFLAGS, (caddr_t)&ifr));
}