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
union vxlan_sockaddr {int /*<<< orphan*/  sa; } ;
struct vxlan_softc {int /*<<< orphan*/  vxl_src_addr; } ;
struct ifvxlancmd {union vxlan_sockaddr vxlcmd_sa; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (union vxlan_sockaddr*) ; 
 scalar_t__ FUNC1 (union vxlan_sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_softc*) ; 
 scalar_t__ FUNC4 (struct vxlan_softc*) ; 
 int FUNC5 (union vxlan_sockaddr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (union vxlan_sockaddr*) ; 

__attribute__((used)) static int
FUNC8(struct vxlan_softc *sc, void *arg)
{
	struct ifvxlancmd *cmd;
	union vxlan_sockaddr *vxlsa;
	int error;

	cmd = arg;
	vxlsa = &cmd->vxlcmd_sa;

	if (!FUNC0(vxlsa))
		return (EINVAL);
	if (FUNC7(vxlsa) != 0)
		return (EINVAL);
	if (FUNC1(vxlsa)) {
		error = FUNC5(vxlsa);
		if (error)
			return (error);
	}

	FUNC2(sc);
	if (FUNC4(sc)) {
		FUNC6(&sc->vxl_src_addr, &vxlsa->sa);
		error = 0;
	} else
		error = EBUSY;
	FUNC3(sc);

	return (error);
}