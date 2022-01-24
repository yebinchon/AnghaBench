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
 int /*<<< orphan*/  TWS_BIT0 ; 
 int /*<<< orphan*/  TWS_I2O0_HIMASK ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tws_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct tws_softc *sc)
{

    FUNC0(sc, "entry", 0, 0);
    /* turn on response and db interrupt only */
    FUNC1(sc, TWS_I2O0_HIMASK, TWS_BIT0, 4);

}