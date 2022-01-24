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
struct vxlan_softc {int /*<<< orphan*/  vxl_ftable_hash_key; int /*<<< orphan*/ * vxl_ftable; } ;
struct vxlan_ftable_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_VXLAN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int VXLAN_SC_FTABLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct vxlan_softc *sc)
{
	int i;

	sc->vxl_ftable = FUNC2(sizeof(struct vxlan_ftable_head) *
	    VXLAN_SC_FTABLE_SIZE, M_VXLAN, M_ZERO | M_WAITOK);

	for (i = 0; i < VXLAN_SC_FTABLE_SIZE; i++)
		FUNC0(&sc->vxl_ftable[i]);
	sc->vxl_ftable_hash_key = FUNC1();
}