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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int RTWN_FW_RESET_CHECKSUM ; 
 int RTWN_FW_RESET_DOWNLOAD ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int) ; 

void
FUNC2(struct rtwn_softc *sc, int reason)
{

	if (reason == RTWN_FW_RESET_CHECKSUM)
		return;

	FUNC0(sc, reason);

	/*
	 * We must sleep for one second to let the firmware settle.
	 * Accessing registers too early will hang the whole system.
	 */
	if (reason == RTWN_FW_RESET_DOWNLOAD)
		FUNC1(sc, 1000 * 1000);
}