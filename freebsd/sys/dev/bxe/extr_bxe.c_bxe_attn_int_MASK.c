#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct bxe_softc {int attn_state; TYPE_2__* def_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  attn_bits_ack; int /*<<< orphan*/  attn_bits; } ;
struct TYPE_4__ {TYPE_1__ atten_status_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  DBG_INTR ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc *sc)
{
    /* read local copy of bits */
    uint32_t attn_bits = FUNC4(sc->def_sb->atten_status_block.attn_bits);
    uint32_t attn_ack = FUNC4(sc->def_sb->atten_status_block.attn_bits_ack);
    uint32_t attn_state = sc->attn_state;

    /* look for changed bits */
    uint32_t asserted   =  attn_bits & ~attn_ack & ~attn_state;
    uint32_t deasserted = ~attn_bits &  attn_ack &  attn_state;

    FUNC0(sc, DBG_INTR,
          "attn_bits 0x%08x attn_ack 0x%08x asserted 0x%08x deasserted 0x%08x\n",
          attn_bits, attn_ack, asserted, deasserted);

    if (~(attn_bits ^ attn_ack) & (attn_bits ^ attn_state)) {
        FUNC1(sc, "BAD attention state\n");
    }

    /* handle bits that were raised */
    if (asserted) {
        FUNC2(sc, asserted);
    }

    if (deasserted) {
        FUNC3(sc, deasserted);
    }
}