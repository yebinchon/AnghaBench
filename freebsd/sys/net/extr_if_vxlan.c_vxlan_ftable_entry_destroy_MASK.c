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
struct vxlan_softc {int /*<<< orphan*/  vxl_ftable_cnt; } ;
struct vxlan_ftable_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vxlan_ftable_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_ftable_entry*) ; 
 int /*<<< orphan*/  vxlfe_hash ; 

__attribute__((used)) static void
FUNC2(struct vxlan_softc *sc,
    struct vxlan_ftable_entry *fe)
{

	sc->vxl_ftable_cnt--;
	FUNC0(fe, vxlfe_hash);
	FUNC1(fe);
}