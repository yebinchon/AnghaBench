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
typedef  int uint32_t ;
struct creator_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FFB_DAC ; 
 int const FFB_DAC_CUR_BITMAP_P0 ; 
 int const FFB_DAC_CUR_BITMAP_P1 ; 
 int const FFB_DAC_CUR_COLOR1 ; 
 int /*<<< orphan*/  FFB_DAC_TYPE2 ; 
 int /*<<< orphan*/  FFB_DAC_VALUE2 ; 
 int /*<<< orphan*/  FUNC0 (struct creator_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct creator_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** creator_mouse_pointer ; 

__attribute__((used)) static void
FUNC2(struct creator_softc *sc)
{
	int i, j;

	FUNC1(sc, 0);
	FUNC0(sc, FFB_DAC, FFB_DAC_TYPE2, FFB_DAC_CUR_COLOR1);
	FUNC0(sc, FFB_DAC, FFB_DAC_VALUE2, 0xffffff);
	FUNC0(sc, FFB_DAC, FFB_DAC_VALUE2, 0x0);
	for (i = 0; i < 2; i++) {
		FUNC0(sc, FFB_DAC, FFB_DAC_TYPE2,
		    i ? FFB_DAC_CUR_BITMAP_P0 : FFB_DAC_CUR_BITMAP_P1);
		for (j = 0; j < 64; j++) {
			FUNC0(sc, FFB_DAC, FFB_DAC_VALUE2,
			    *(const uint32_t *)(&creator_mouse_pointer[j][0]));
			FUNC0(sc, FFB_DAC, FFB_DAC_VALUE2,
			    *(const uint32_t *)(&creator_mouse_pointer[j][4]));
		}
	}
}