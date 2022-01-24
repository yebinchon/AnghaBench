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
typedef  int /*<<< orphan*/  uint64_t ;
struct sec_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEC_EUASR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
#define  SEC_EU_AESU 136 
#define  SEC_EU_AFEU 135 
#define  SEC_EU_CRCU 134 
#define  SEC_EU_DEU 133 
#define  SEC_EU_KEU 132 
#define  SEC_EU_MDEU_A 131 
#define  SEC_EU_MDEU_B 130 
#define  SEC_EU_PKEU 129 
#define  SEC_EU_RNGU 128 
 int /*<<< orphan*/  FUNC8 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  controller ; 

__attribute__((used)) static int
FUNC10(struct sec_softc *sc, int eu)
{
	uint64_t reg;
	int channel = 0;

	FUNC8(sc, controller);

	reg = FUNC9(sc, SEC_EUASR);

	switch (eu) {
	case SEC_EU_AFEU:
		channel = FUNC1(reg);
		break;
	case SEC_EU_DEU:
		channel = FUNC3(reg);
		break;
	case SEC_EU_MDEU_A:
	case SEC_EU_MDEU_B:
		channel = FUNC5(reg);
		break;
	case SEC_EU_RNGU:
		channel = FUNC7(reg);
		break;
	case SEC_EU_PKEU:
		channel = FUNC6(reg);
		break;
	case SEC_EU_AESU:
		channel = FUNC0(reg);
		break;
	case SEC_EU_KEU:
		channel = FUNC4(reg);
		break;
	case SEC_EU_CRCU:
		channel = FUNC2(reg);
		break;
	}

	return (channel - 1);
}