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
struct vxlan_softc {int dummy; } ;
struct vxlan_socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vxlan_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_socket*) ; 
 int /*<<< orphan*/  vxl_entry ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_softc*) ; 

__attribute__((used)) static void
FUNC4(struct vxlan_socket *vso, struct vxlan_softc *sc)
{

	FUNC1(vso);
	FUNC0(sc, vxl_entry);
	FUNC2(vso);

	FUNC3(sc);
}