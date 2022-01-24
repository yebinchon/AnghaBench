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
struct TYPE_2__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* mtkswitch_write ) (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;

/* Variables and functions */
 int ATC_AC_CMD_CLEAN ; 
 int ATC_AC_MAT_NON_STATIC_MACS ; 
 int ATC_BUSY ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MTKSWITCH_ATC ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct mtkswitch_softc *sc)
{

	FUNC0(sc, MA_OWNED);

	/* Flush all non-static MAC addresses */
	while (sc->hal.mtkswitch_read(sc, MTKSWITCH_ATC) & ATC_BUSY);
	sc->hal.mtkswitch_write(sc, MTKSWITCH_ATC, ATC_BUSY |
	    ATC_AC_MAT_NON_STATIC_MACS | ATC_AC_CMD_CLEAN);
	while (sc->hal.mtkswitch_read(sc, MTKSWITCH_ATC) & ATC_BUSY);

	return (0);
}