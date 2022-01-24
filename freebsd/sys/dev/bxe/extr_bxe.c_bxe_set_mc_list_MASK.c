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
struct ecore_mcast_ramrod_params {int /*<<< orphan*/ * mcast_obj; int /*<<< orphan*/ * member_0; } ;
struct bxe_softc {int /*<<< orphan*/  mcast_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  ECORE_MCAST_CMD_ADD ; 
 int /*<<< orphan*/  ECORE_MCAST_CMD_DEL ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_mcast_ramrod_params*) ; 
 int FUNC4 (struct bxe_softc*,struct ecore_mcast_ramrod_params*) ; 
 int FUNC5 (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct bxe_softc *sc)
{
    struct ecore_mcast_ramrod_params rparam = { NULL };
    int rc = 0;

    rparam.mcast_obj = &sc->mcast_obj;

    FUNC1(sc);

    /* first, clear all configured multicast MACs */
    rc = FUNC5(sc, &rparam, ECORE_MCAST_CMD_DEL);
    if (rc < 0) {
        FUNC0(sc, "Failed to clear multicast configuration: %d\n", rc);
        /* Manual backport parts of FreeBSD upstream r284470. */
        FUNC2(sc);
        return (rc);
    }

    /* configure a new MACs list */
    rc = FUNC4(sc, &rparam);
    if (rc) {
        FUNC0(sc, "Failed to create mcast MACs list (%d)\n", rc);
        FUNC2(sc);
        return (rc);
    }

    /* Now add the new MACs */
    rc = FUNC5(sc, &rparam, ECORE_MCAST_CMD_ADD);
    if (rc < 0) {
        FUNC0(sc, "Failed to set new mcast config (%d)\n", rc);
    }

    FUNC3(&rparam);

    FUNC2(sc);

    return (rc);
}