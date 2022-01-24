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
typedef  int /*<<< orphan*/  u64 ;
struct ixl_vsi {scalar_t__ link_active; int /*<<< orphan*/  ctx; } ;
struct iavf_sc {int /*<<< orphan*/  link_speed; scalar_t__ link_up; struct ixl_vsi vsi; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_sc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct iavf_sc *sc)
{
	struct ixl_vsi *vsi = &sc->vsi;
	u64 baudrate;

	if (sc->link_up){ 
		if (vsi->link_active == FALSE) {
			vsi->link_active = TRUE;
			baudrate = FUNC2(sc->link_speed);
			FUNC0(sc, "baudrate: %lu\n", baudrate);
			FUNC1(vsi->ctx, LINK_STATE_UP, baudrate);
		}
	} else { /* Link down */
		if (vsi->link_active == TRUE) {
			vsi->link_active = FALSE;
			FUNC1(vsi->ctx, LINK_STATE_DOWN, 0);
		}
	}
}