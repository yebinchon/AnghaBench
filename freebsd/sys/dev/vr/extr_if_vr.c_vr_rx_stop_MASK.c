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
typedef  int uint8_t ;
struct vr_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vr_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  VR_CR0 ; 
 int VR_CR0_RX_ON ; 
 int VR_TIMEOUT ; 

__attribute__((used)) static int
FUNC3(struct vr_softc *sc)
{
	int		i;
	uint8_t		cmd;

	cmd = FUNC0(sc, VR_CR0);
	if ((cmd & VR_CR0_RX_ON) != 0) {
		cmd &= ~VR_CR0_RX_ON;
		FUNC1(sc, VR_CR0, cmd);
		for (i = VR_TIMEOUT; i > 0; i--) {
			FUNC2(5);
			cmd = FUNC0(sc, VR_CR0);
			if ((cmd & VR_CR0_RX_ON) == 0)
				break;
		}
		if (i == 0)
			return (ETIMEDOUT);
	}
	return (0);
}