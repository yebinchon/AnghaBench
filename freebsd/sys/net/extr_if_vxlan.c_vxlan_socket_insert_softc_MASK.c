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
typedef  size_t uint32_t ;
struct vxlan_softc {size_t vxl_vni; } ;
struct vxlan_socket {int /*<<< orphan*/ * vxlso_vni_hash; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vxlan_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_softc*) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct vxlan_socket*) ; 
 int /*<<< orphan*/  vxl_entry ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_softc*) ; 
 struct vxlan_softc* FUNC6 (struct vxlan_socket*,size_t) ; 

__attribute__((used)) static int
FUNC7(struct vxlan_socket *vso, struct vxlan_softc *sc)
{
	struct vxlan_softc *tsc;
	uint32_t vni, hash;

	vni = sc->vxl_vni;
	hash = FUNC2(vni);

	FUNC3(vso);
	tsc = FUNC6(vso, vni);
	if (tsc != NULL) {
		FUNC4(vso);
		FUNC5(tsc);
		return (EEXIST);
	}

	FUNC1(sc);
	FUNC0(&vso->vxlso_vni_hash[hash], sc, vxl_entry);
	FUNC4(vso);

	return (0);
}