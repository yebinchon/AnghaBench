#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ecore_vlan_mac_obj {TYPE_1__ exe_queue; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct ecore_vlan_mac_obj*) ; 

void FUNC3(struct bxe_softc *sc,
				  struct ecore_vlan_mac_obj *o)
{
	FUNC0(&o->exe_queue.lock);
	FUNC2(sc, o);
	FUNC1(&o->exe_queue.lock);
}