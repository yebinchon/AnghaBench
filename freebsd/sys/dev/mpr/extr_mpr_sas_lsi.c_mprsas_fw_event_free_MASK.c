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
struct mpr_softc {int dummy; } ;
struct mpr_fw_event_work {struct mpr_fw_event_work* event_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MPR ; 
 int /*<<< orphan*/  FUNC0 (struct mpr_fw_event_work*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct mpr_softc *sc, struct mpr_fw_event_work *fw_event)
{

	FUNC0(fw_event->event_data, M_MPR);
	FUNC0(fw_event, M_MPR);
}