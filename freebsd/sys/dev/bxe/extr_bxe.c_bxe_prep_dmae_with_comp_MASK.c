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
typedef  int /*<<< orphan*/  uint8_t ;
struct dmae_cmd {int /*<<< orphan*/  comp_val; int /*<<< orphan*/  comp_addr_hi; int /*<<< orphan*/  comp_addr_lo; int /*<<< orphan*/  opcode; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAE_COMP_PCI ; 
 int /*<<< orphan*/  DMAE_COMP_VAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dmae_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wb_comp ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc    *sc,
                        struct dmae_cmd *dmae,
                        uint8_t             src_type,
                        uint8_t             dst_type)
{
    FUNC4(dmae, 0, sizeof(struct dmae_cmd));

    /* set the opcode */
    dmae->opcode = FUNC3(sc, src_type, dst_type,
                                   TRUE, DMAE_COMP_PCI);

    /* fill in the completion parameters */
    dmae->comp_addr_lo = FUNC2(FUNC0(sc, wb_comp));
    dmae->comp_addr_hi = FUNC1(FUNC0(sc, wb_comp));
    dmae->comp_val     = DMAE_COMP_VAL;
}