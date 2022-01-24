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
typedef  union vxlan_sockaddr {int dummy; } vxlan_sockaddr ;
struct vxlan_softc {int vxl_vso_mc_index; int vxl_vni; struct vxlan_socket* vxl_sock; int /*<<< orphan*/  vxl_mc_ifindex; union vxlan_sockaddr vxl_dst_addr; union vxlan_sockaddr vxl_src_addr; struct ifnet* vxl_ifp; } ;
struct vxlan_socket {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_softc*) ; 
 int FUNC3 (struct vxlan_softc*) ; 
 int FUNC4 (union vxlan_sockaddr*) ; 
 int FUNC5 (struct ifnet*,int,union vxlan_sockaddr*,struct vxlan_socket**) ; 
 int FUNC6 (struct vxlan_socket*,struct vxlan_softc*) ; 
 struct vxlan_socket* FUNC7 (union vxlan_sockaddr*) ; 
 int FUNC8 (struct vxlan_socket*,union vxlan_sockaddr*,union vxlan_sockaddr*,int /*<<< orphan*/ ,int*) ; 
 struct vxlan_socket* FUNC9 (union vxlan_sockaddr*) ; 
 int /*<<< orphan*/  FUNC10 (struct vxlan_socket*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vxlan_socket*) ; 

__attribute__((used)) static int
FUNC12(struct vxlan_softc *sc)
{
	struct vxlan_socket *vso;
	struct ifnet *ifp;
	union vxlan_sockaddr *saddr, *daddr;
	int multicast, error;

	vso = NULL;
	ifp = sc->vxl_ifp;
	saddr = &sc->vxl_src_addr;
	daddr = &sc->vxl_dst_addr;

	multicast = FUNC4(daddr);
	FUNC0(multicast != -1);
	sc->vxl_vso_mc_index = -1;

	/*
	 * Try to create the socket. If that fails, attempt to use an
	 * existing socket.
	 */
	error = FUNC5(ifp, multicast, saddr, &vso);
	if (error) {
		if (multicast != 0)
			vso = FUNC9(saddr);
		else
			vso = FUNC7(saddr);

		if (vso == NULL) {
			FUNC1(ifp, "cannot create socket (error: %d), "
			    "and no existing socket found\n", error);
			goto out;
		}
	}

	if (multicast != 0) {
		error = FUNC3(sc);
		if (error)
			goto out;

		error = FUNC8(vso, daddr, saddr,
		    sc->vxl_mc_ifindex, &sc->vxl_vso_mc_index);
		if (error)
			goto out;
	}

	sc->vxl_sock = vso;
	error = FUNC6(vso, sc);
	if (error) {
		sc->vxl_sock = NULL;
		FUNC1(ifp, "network identifier %d already exists in "
		    "this socket\n", sc->vxl_vni);
		goto out;
	}

	return (0);

out:
	if (vso != NULL) {
		if (sc->vxl_vso_mc_index != -1) {
			FUNC10(vso,
			    sc->vxl_vso_mc_index);
			sc->vxl_vso_mc_index = -1;
		}
		if (multicast != 0)
			FUNC2(sc);
		FUNC11(vso);
	}

	return (error);
}