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
typedef  int /*<<< orphan*/  uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS ; 
 int UNLOAD_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 

__attribute__((used)) static uint32_t
FUNC3(struct bxe_softc *sc,
                    int              unload_mode)
{
    uint32_t reset_code = 0;

    /* Select the UNLOAD request mode */
    if (unload_mode == UNLOAD_NORMAL) {
        reset_code = DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS;
    } else {
        reset_code = DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS;
    }

    /* Send the request to the MCP */
    if (!FUNC0(sc)) {
        reset_code = FUNC1(sc, reset_code, 0);
    } else {
        reset_code = FUNC2(sc);
    }

    return (reset_code);
}