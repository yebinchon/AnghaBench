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
struct ecore_vlan_mac_obj {unsigned long saved_ramrod_flags; int /*<<< orphan*/  head_exe_request; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,unsigned long) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC1(struct bxe_softc *sc,
				    struct ecore_vlan_mac_obj *o,
				    unsigned long ramrod_flags)
{
	o->head_exe_request = TRUE;
	o->saved_ramrod_flags = ramrod_flags;
	FUNC0(sc, "Placing pending execution with ramrod flags %lu\n",
		  ramrod_flags);
}