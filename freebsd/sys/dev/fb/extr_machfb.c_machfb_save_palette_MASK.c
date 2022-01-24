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
typedef  int /*<<< orphan*/  video_adapter_t ;
typedef  int uint8_t ;
typedef  void* u_char ;
struct machfb_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_DATA ; 
 int /*<<< orphan*/  DAC_MASK ; 
 int /*<<< orphan*/  DAC_RINDEX ; 
 int /*<<< orphan*/  DAC_WINDEX ; 
 void* FUNC0 (struct machfb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct machfb_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(video_adapter_t *adp, u_char *palette)
{
	struct machfb_softc *sc;
	int i;
	uint8_t	dac_mask, dac_rindex, dac_windex;

	sc = (struct machfb_softc *)adp;

	dac_rindex = FUNC0(sc, DAC_RINDEX);
	dac_windex = FUNC0(sc, DAC_WINDEX);
	dac_mask = FUNC0(sc, DAC_MASK);
	FUNC1(sc, DAC_MASK, 0xff);
	FUNC1(sc, DAC_RINDEX, 0x0);
	for (i = 0; i < 256 * 3; i++)
		palette[i] = FUNC0(sc, DAC_DATA);
	FUNC1(sc, DAC_MASK, dac_mask);
	FUNC1(sc, DAC_RINDEX, dac_rindex);
	FUNC1(sc, DAC_WINDEX, dac_windex);

	return (0);
}