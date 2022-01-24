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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int BXE_PREV_WAIT_NEEDED ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FW_MSG_CODE_DRV_LOAD_FUNCTION ; 
 int FUNC1 (struct bxe_softc*) ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bxe_softc*) ; 
 int FUNC4 (struct bxe_softc*) ; 

__attribute__((used)) static int
FUNC5(struct bxe_softc *sc)
{
    int rc;

    FUNC0(sc, DBG_LOAD, "Uncommon unload Flow\n");

    /* Test if previous unload process was already finished for this path */
    if (FUNC3(sc)) {
        return (FUNC4(sc));
    }

    FUNC0(sc, DBG_LOAD, "Path is unmarked\n");

    /*
     * If function has FLR capabilities, and existing FW version matches
     * the one required, then FLR will be sufficient to clean any residue
     * left by previous driver
     */
    rc = FUNC2(sc, FW_MSG_CODE_DRV_LOAD_FUNCTION);
    if (!rc) {
        /* fw version is good */
        FUNC0(sc, DBG_LOAD, "FW version matches our own, attempting FLR\n");
        rc = FUNC1(sc);
    }

    if (!rc) {
        /* FLR was performed */
        FUNC0(sc, DBG_LOAD, "FLR successful\n");
        return (0);
    }

    FUNC0(sc, DBG_LOAD, "Could not FLR\n");

    /* Close the MCP request, return failure*/
    rc = FUNC4(sc);
    if (!rc) {
        rc = BXE_PREV_WAIT_NEEDED;
    }

    return (rc);
}