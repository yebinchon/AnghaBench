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
struct mly_softc {int dummy; } ;
struct mly_event {int dummy; } ;
struct mly_command {scalar_t__ mc_status; scalar_t__ mc_data; struct mly_softc* mc_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ SCSI_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mly_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mly_softc*,struct mly_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct mly_command*) ; 

__attribute__((used)) static void
FUNC5(struct mly_command *mc)
{
    struct mly_softc	*sc = mc->mc_sc;
    struct mly_event	*me = (struct mly_event *)mc->mc_data;

    FUNC0(1);

    /* 
     * If the event was successfully fetched, process it.
     */
    if (mc->mc_status == SCSI_STATUS_OK) {
	FUNC3(sc, me);
	FUNC1(me, M_DEVBUF);
    }
    FUNC4(mc);

    /*
     * Check for another event.
     */
    FUNC2(sc);
}