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
struct mps_softc {int dummy; } ;
struct mps_fw_event_work {struct mps_fw_event_work* event_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MPT2 ; 
 int /*<<< orphan*/  FUNC0 (struct mps_fw_event_work*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct mps_softc *sc, struct mps_fw_event_work *fw_event)
{

	FUNC0(fw_event->event_data, M_MPT2);
	FUNC0(fw_event, M_MPT2);
}