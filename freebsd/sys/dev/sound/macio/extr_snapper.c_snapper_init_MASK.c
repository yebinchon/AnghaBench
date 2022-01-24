#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct snd_mixer {int dummy; } ;
struct snapper_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ACR; int /*<<< orphan*/  RLB_GAIN; int /*<<< orphan*/  LLB_GAIN; int /*<<< orphan*/  RLB; int /*<<< orphan*/  LLB; int /*<<< orphan*/  MIXER_R; int /*<<< orphan*/  MIXER_L; int /*<<< orphan*/  BASS; int /*<<< orphan*/  TREBLE; int /*<<< orphan*/  VOLUME; int /*<<< orphan*/  DRC; int /*<<< orphan*/  MCR2; int /*<<< orphan*/  MCR1; int /*<<< orphan*/  RB6; int /*<<< orphan*/  RB5; int /*<<< orphan*/  RB4; int /*<<< orphan*/  RB3; int /*<<< orphan*/  RB2; int /*<<< orphan*/  RB1; int /*<<< orphan*/  RB0; int /*<<< orphan*/  LB6; int /*<<< orphan*/  LB5; int /*<<< orphan*/  LB4; int /*<<< orphan*/  LB3; int /*<<< orphan*/  LB2; int /*<<< orphan*/  LB1; int /*<<< orphan*/  LB0; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNAPPER_ACR ; 
 int /*<<< orphan*/  SNAPPER_BASS ; 
 int /*<<< orphan*/  SNAPPER_DRC ; 
 int /*<<< orphan*/  SNAPPER_LB0 ; 
 int /*<<< orphan*/  SNAPPER_LB1 ; 
 int /*<<< orphan*/  SNAPPER_LB2 ; 
 int /*<<< orphan*/  SNAPPER_LB3 ; 
 int /*<<< orphan*/  SNAPPER_LB4 ; 
 int /*<<< orphan*/  SNAPPER_LB5 ; 
 int /*<<< orphan*/  SNAPPER_LB6 ; 
 int /*<<< orphan*/  SNAPPER_LLB ; 
 int /*<<< orphan*/  SNAPPER_LLB_GAIN ; 
 int /*<<< orphan*/  SNAPPER_MCR1 ; 
 int /*<<< orphan*/  SNAPPER_MCR2 ; 
 int /*<<< orphan*/  SNAPPER_MIXER_L ; 
 int /*<<< orphan*/  SNAPPER_MIXER_R ; 
 int /*<<< orphan*/  SNAPPER_RB0 ; 
 int /*<<< orphan*/  SNAPPER_RB1 ; 
 int /*<<< orphan*/  SNAPPER_RB2 ; 
 int /*<<< orphan*/  SNAPPER_RB3 ; 
 int /*<<< orphan*/  SNAPPER_RB4 ; 
 int /*<<< orphan*/  SNAPPER_RB5 ; 
 int /*<<< orphan*/  SNAPPER_RB6 ; 
 int /*<<< orphan*/  SNAPPER_RLB ; 
 int /*<<< orphan*/  SNAPPER_RLB_GAIN ; 
 int /*<<< orphan*/  SNAPPER_TREBLE ; 
 int /*<<< orphan*/  SNAPPER_VOLUME ; 
 int /*<<< orphan*/  SOUND_MASK_VOLUME ; 
 struct snapper_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 TYPE_1__ snapper_initdata ; 
 int /*<<< orphan*/  FUNC3 (struct snapper_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct snd_mixer *m)
{
	struct snapper_softc *sc;
	u_int		x = 0;

	sc = FUNC0(FUNC1(m));

        FUNC3(sc, SNAPPER_LB0, snapper_initdata.LB0);
	FUNC3(sc, SNAPPER_LB1, snapper_initdata.LB1);
	FUNC3(sc, SNAPPER_LB2, snapper_initdata.LB2);
	FUNC3(sc, SNAPPER_LB3, snapper_initdata.LB3);
	FUNC3(sc, SNAPPER_LB4, snapper_initdata.LB4);
	FUNC3(sc, SNAPPER_LB5, snapper_initdata.LB5);
	FUNC3(sc, SNAPPER_LB6, snapper_initdata.LB6);
	FUNC3(sc, SNAPPER_RB0, snapper_initdata.RB0);
	FUNC3(sc, SNAPPER_RB1, snapper_initdata.RB1);
	FUNC3(sc, SNAPPER_RB1, snapper_initdata.RB1);
	FUNC3(sc, SNAPPER_RB2, snapper_initdata.RB2);
	FUNC3(sc, SNAPPER_RB3, snapper_initdata.RB3);
	FUNC3(sc, SNAPPER_RB4, snapper_initdata.RB4);
	FUNC3(sc, SNAPPER_RB5, snapper_initdata.RB5);
	FUNC3(sc, SNAPPER_RB6, snapper_initdata.RB6);
	FUNC3(sc, SNAPPER_MCR1, snapper_initdata.MCR1);
	FUNC3(sc, SNAPPER_MCR2, snapper_initdata.MCR2);
	FUNC3(sc, SNAPPER_DRC, snapper_initdata.DRC);
	FUNC3(sc, SNAPPER_VOLUME, snapper_initdata.VOLUME);
	FUNC3(sc, SNAPPER_TREBLE, snapper_initdata.TREBLE);
	FUNC3(sc, SNAPPER_BASS, snapper_initdata.BASS);
	FUNC3(sc, SNAPPER_MIXER_L, snapper_initdata.MIXER_L);
	FUNC3(sc, SNAPPER_MIXER_R, snapper_initdata.MIXER_R);
	FUNC3(sc, SNAPPER_LLB, snapper_initdata.LLB);
	FUNC3(sc, SNAPPER_RLB, snapper_initdata.RLB);
	FUNC3(sc, SNAPPER_LLB_GAIN, snapper_initdata.LLB_GAIN);
	FUNC3(sc, SNAPPER_RLB_GAIN, snapper_initdata.RLB_GAIN);
	FUNC3(sc, SNAPPER_ACR, snapper_initdata.ACR);

	x |= SOUND_MASK_VOLUME;
	FUNC2(m, x);

	return (0);
}