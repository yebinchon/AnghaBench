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
struct bxe_softc {int debug; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int DBG_PHY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

void
FUNC3(struct bxe_softc *sc,
             char             *fmt)
{
    char buf[128];
    if (FUNC0(sc->debug & DBG_PHY)) {
        FUNC2(buf, sizeof(buf), "ELINK: %s", fmt);
        FUNC1(sc->dev, "%s", buf);
    }
}