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
struct ecore_vlan_mac_obj {scalar_t__ head_exe_request; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct ecore_vlan_mac_obj*) ; 

__attribute__((used)) static void FUNC2(struct bxe_softc *sc,
					    struct ecore_vlan_mac_obj *o)
{
	/* It's possible a new pending execution was added since this writer
	 * executed. If so, execute again. [Ad infinitum]
	 */
	while(o->head_exe_request) {
		FUNC0(sc, "vlan_mac_lock - writer release encountered a pending request\n");
		FUNC1(sc, o);
	}
}