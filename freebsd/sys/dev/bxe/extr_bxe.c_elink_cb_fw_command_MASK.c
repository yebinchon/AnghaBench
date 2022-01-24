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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int fw_seq; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_mb_header; int /*<<< orphan*/  drv_mb_header; int /*<<< orphan*/  drv_mb_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_PHY ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FW_MSG_CODE_MASK ; 
 int FW_MSG_SEQ_NUMBER_MASK ; 
 int FUNC6 (struct bxe_softc*) ; 
 int FUNC7 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* func_mb ; 

uint32_t
FUNC9(struct bxe_softc *sc,
                    uint32_t         command,
                    uint32_t         param)
{
    int mb_idx = FUNC6(sc);
    uint32_t seq;
    uint32_t rc = 0;
    uint32_t cnt = 1;
    uint8_t delay = FUNC4(sc) ? 100 : 10;

    FUNC2(sc);

    seq = ++sc->fw_seq;
    FUNC8(sc, func_mb[mb_idx].drv_mb_param, param);
    FUNC8(sc, func_mb[mb_idx].drv_mb_header, (command | seq));

    FUNC0(sc, DBG_PHY,
          "wrote command 0x%08x to FW MB param 0x%08x\n",
          (command | seq), param);

    /* Let the FW do it's magic. GIve it up to 5 seconds... */
    do {
        FUNC5(delay * 1000);
        rc = FUNC7(sc, func_mb[mb_idx].fw_mb_header);
    } while ((seq != (rc & FW_MSG_SEQ_NUMBER_MASK)) && (cnt++ < 500));

    FUNC0(sc, DBG_PHY,
          "[after %d ms] read 0x%x seq 0x%x from FW MB\n",
          cnt*delay, rc, seq);

    /* is this a reply to our command? */
    if (seq == (rc & FW_MSG_SEQ_NUMBER_MASK)) {
        rc &= FW_MSG_CODE_MASK;
    } else {
        /* Ruh-roh! */
        FUNC1(sc, "FW failed to respond!\n");
        // XXX bxe_fw_dump(sc);
        rc = 0;
    }

    FUNC3(sc);
    return (rc);
}