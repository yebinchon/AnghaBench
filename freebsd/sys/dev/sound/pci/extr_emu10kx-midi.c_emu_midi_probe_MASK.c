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
struct emu_midi_softc {int is_emu10k1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 uintptr_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t*) ; 
 int /*<<< orphan*/  EMU_VAR_ISEMU10K1 ; 
 int ENXIO ; 
 uintptr_t SCF_MIDI ; 
 int /*<<< orphan*/  FUNC1 (struct emu_midi_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct emu_midi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct emu_midi_softc *scp;
	uintptr_t func, r, is_emu10k1;

	r = FUNC0(FUNC2(dev), dev, 0, &func);
	if (func != SCF_MIDI)
		return (ENXIO);

	scp = FUNC3(dev);
	FUNC1(scp, sizeof(*scp));
	r = FUNC0(FUNC2(dev), dev, EMU_VAR_ISEMU10K1, &is_emu10k1);
	scp->is_emu10k1 = is_emu10k1 ? 1 : 0;

	FUNC4(dev, "EMU10Kx MIDI Interface");
	return (0);
}