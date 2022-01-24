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
struct tws_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tws_softc*,int) ; 

void
FUNC2(void *arg)
{
    struct tws_softc *sc = (struct tws_softc *)arg;
    int error = 0;

    FUNC0(sc, "entry", 0, 0);

    if ((error = FUNC1(sc, 0x03 /* REQUEST_SENSE */))) {
        FUNC0(sc, "aen fetch send in progress", 0, 0);
    }
}