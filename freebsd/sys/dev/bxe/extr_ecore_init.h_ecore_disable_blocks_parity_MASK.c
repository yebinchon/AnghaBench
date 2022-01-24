#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  mask_addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* ecore_blocks_parity_data ; 
 scalar_t__ FUNC3 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct bxe_softc *sc)
{
	int i;

	for (i = 0; i < FUNC0(ecore_blocks_parity_data); i++) {
		uint32_t dis_mask = FUNC3(sc, i);

		if (dis_mask) {
			FUNC2(sc, ecore_blocks_parity_data[i].mask_addr,
			       dis_mask);
			FUNC1(sc, "Setting parity mask "
						 "for %s to\t\t0x%x\n",
				    ecore_blocks_parity_data[i].name, dis_mask);
		}
	}

	/* Disable MCP parity attentions */
	FUNC4(sc, FALSE);
}