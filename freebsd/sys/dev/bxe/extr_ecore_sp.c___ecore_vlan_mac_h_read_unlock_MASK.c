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
struct ecore_vlan_mac_obj {scalar_t__ head_exe_request; int /*<<< orphan*/  head_reader; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct ecore_vlan_mac_obj*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct bxe_softc *sc,
					  struct ecore_vlan_mac_obj *o)
{
	if (!o->head_reader) {
		FUNC0("Need to release vlan mac reader lock, but lock isn't taken\n");
#ifdef ECORE_STOP_ON_ERROR
		ecore_panic();
#endif
	} else {
		o->head_reader--;
		FUNC1(sc, "vlan_mac_lock - decreased readers to %d\n",
			  o->head_reader);
	}

	/* It's possible a new pending execution was added, and that this reader
	 * was last - if so we need to execute the command.
	 */
	if (!o->head_reader && o->head_exe_request) {
		FUNC1(sc, "vlan_mac_lock - reader release encountered a pending request\n");

		/* Writer release will do the trick */
		FUNC2(sc, o);
	}
}