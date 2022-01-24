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
typedef  int /*<<< orphan*/  uint32_t ;
struct creator_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FFB_DAC ; 
 int /*<<< orphan*/  FFB_DAC_CFG_TGEN ; 
 int /*<<< orphan*/  FFB_DAC_CFG_TGEN_VIDE ; 
 int /*<<< orphan*/  FFB_DAC_TYPE ; 
 int /*<<< orphan*/  FFB_DAC_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct creator_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct creator_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  V_DISPLAY_BLANK 131 
#define  V_DISPLAY_ON 130 
#define  V_DISPLAY_STAND_BY 129 
#define  V_DISPLAY_SUSPEND 128 

__attribute__((used)) static int
FUNC2(video_adapter_t *adp, int mode)
{
	struct creator_softc *sc;
	uint32_t v;
	int i;

	sc = (struct creator_softc *)adp;
	FUNC1(sc, FFB_DAC, FFB_DAC_TYPE, FFB_DAC_CFG_TGEN);
	v = FUNC0(sc, FFB_DAC, FFB_DAC_VALUE);
	switch (mode) {
	case V_DISPLAY_ON:
		v |= FFB_DAC_CFG_TGEN_VIDE;
		break;
	case V_DISPLAY_BLANK:
	case V_DISPLAY_STAND_BY:
	case V_DISPLAY_SUSPEND:
		v &= ~FFB_DAC_CFG_TGEN_VIDE;
		break;
	}
	FUNC1(sc, FFB_DAC, FFB_DAC_TYPE, FFB_DAC_CFG_TGEN);
	FUNC1(sc, FFB_DAC, FFB_DAC_VALUE, v);
	for (i = 0; i < 10; i++) {
		FUNC1(sc, FFB_DAC, FFB_DAC_TYPE, FFB_DAC_CFG_TGEN);
		(void)FUNC0(sc, FFB_DAC, FFB_DAC_VALUE);
	}
	return (0);
}