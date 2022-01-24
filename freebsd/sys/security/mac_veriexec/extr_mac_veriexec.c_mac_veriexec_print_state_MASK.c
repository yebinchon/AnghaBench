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
struct sbuf {int dummy; } ;

/* Variables and functions */
 int VERIEXEC_STATE_ACTIVE ; 
 int VERIEXEC_STATE_ENFORCE ; 
 int VERIEXEC_STATE_INACTIVE ; 
 int VERIEXEC_STATE_LOADED ; 
 int VERIEXEC_STATE_LOCKED ; 
 int mac_veriexec_state ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 

__attribute__((used)) static void
FUNC2(struct sbuf *sbp)
{

	if (mac_veriexec_state & VERIEXEC_STATE_INACTIVE)
		FUNC0(sbp, "inactive ");
	if (mac_veriexec_state & VERIEXEC_STATE_LOADED)
		FUNC0(sbp, "loaded ");
	if (mac_veriexec_state & VERIEXEC_STATE_ACTIVE)
		FUNC0(sbp, "active ");
	if (mac_veriexec_state & VERIEXEC_STATE_ENFORCE)
		FUNC0(sbp, "enforce ");
	if (mac_veriexec_state & VERIEXEC_STATE_LOCKED)
		FUNC0(sbp, "locked ");
	if (mac_veriexec_state != 0)
		FUNC1(sbp);
}