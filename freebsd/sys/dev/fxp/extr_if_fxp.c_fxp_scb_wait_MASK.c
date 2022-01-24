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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct fxp_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FXP_CSR_FC_STATUS ; 
 int /*<<< orphan*/  FXP_CSR_FC_THRESH ; 
 int /*<<< orphan*/  FXP_CSR_SCB_COMMAND ; 
 int /*<<< orphan*/  FXP_CSR_SCB_RUSCUS ; 
 int /*<<< orphan*/  FXP_CSR_SCB_STATACK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct fxp_softc *sc)
{
	union {
		uint16_t w;
		uint8_t b[2];
	} flowctl;
	int i = 10000;

	while (FUNC0(sc, FXP_CSR_SCB_COMMAND) && --i)
		FUNC1(2);
	if (i == 0) {
		flowctl.b[0] = FUNC0(sc, FXP_CSR_FC_THRESH);
		flowctl.b[1] = FUNC0(sc, FXP_CSR_FC_STATUS);
		FUNC2(sc->dev, "SCB timeout: 0x%x 0x%x 0x%x 0x%x\n",
		    FUNC0(sc, FXP_CSR_SCB_COMMAND),
		    FUNC0(sc, FXP_CSR_SCB_STATACK),
		    FUNC0(sc, FXP_CSR_SCB_RUSCUS), flowctl.w);
	}
}