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
typedef  int /*<<< orphan*/  uint32_t ;
struct vxlan_softc {int dummy; } ;
struct vxlan_socket {int dummy; } ;
struct rm_priotracker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vxlan_socket*,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_socket*,struct rm_priotracker*) ; 
 struct vxlan_softc* FUNC2 (struct vxlan_socket*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vxlan_softc *
FUNC3(struct vxlan_socket *vso, uint32_t vni)
{
	struct rm_priotracker tracker;
	struct vxlan_softc *sc;

	FUNC0(vso, &tracker);
	sc = FUNC2(vso, vni);
	FUNC1(vso, &tracker);

	return (sc);
}