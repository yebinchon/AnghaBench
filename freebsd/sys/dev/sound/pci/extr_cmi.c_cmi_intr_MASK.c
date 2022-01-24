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
typedef  int u_int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
struct sc_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  mpu; int /*<<< orphan*/  (* mpu_intr ) (int /*<<< orphan*/ ) ;TYPE_2__ rch; TYPE_1__ pch; } ;

/* Variables and functions */
 int CMPCI_REG_ANY_INTR ; 
 int CMPCI_REG_CH0_INTR ; 
 int CMPCI_REG_CH0_INTR_ENABLE ; 
 int CMPCI_REG_CH1_INTR ; 
 int CMPCI_REG_CH1_INTR_ENABLE ; 
 int /*<<< orphan*/  CMPCI_REG_INTR_CTRL ; 
 int /*<<< orphan*/  CMPCI_REG_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *data)
{
	struct sc_info *sc = data;
	u_int32_t intrstat;
	u_int32_t toclear;

	FUNC4(sc->lock);
	intrstat = FUNC2(sc, CMPCI_REG_INTR_STATUS, 4);
	if ((intrstat & CMPCI_REG_ANY_INTR) != 0) {

		toclear = 0;
		if (intrstat & CMPCI_REG_CH0_INTR) {
			toclear |= CMPCI_REG_CH0_INTR_ENABLE;
			//cmi_clr4(sc, CMPCI_REG_INTR_CTRL, CMPCI_REG_CH0_INTR_ENABLE);
		}

		if (intrstat & CMPCI_REG_CH1_INTR) {
			toclear |= CMPCI_REG_CH1_INTR_ENABLE;
			//cmi_clr4(sc, CMPCI_REG_INTR_CTRL, CMPCI_REG_CH1_INTR_ENABLE);
		}

		if (toclear) {
			FUNC1(sc, CMPCI_REG_INTR_CTRL, toclear);
			FUNC5(sc->lock);

			/* Signal interrupts to channel */
			if (intrstat & CMPCI_REG_CH0_INTR) {
				FUNC0(sc->pch.channel);
			}

			if (intrstat & CMPCI_REG_CH1_INTR) {
				FUNC0(sc->rch.channel);
			}

			FUNC4(sc->lock);
			FUNC3(sc, CMPCI_REG_INTR_CTRL, toclear);

		}
	}
	if(sc->mpu_intr) {
		(sc->mpu_intr)(sc->mpu);
	}
	FUNC5(sc->lock);
	return;
}