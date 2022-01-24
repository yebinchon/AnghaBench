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
struct tumbler_softc {int dummy; } ;
struct snd_mixer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  MIXER2; int /*<<< orphan*/  MIXER1; int /*<<< orphan*/  BASS; int /*<<< orphan*/  TREBLE; int /*<<< orphan*/  VOLUME; int /*<<< orphan*/  DRC; int /*<<< orphan*/  MCR; int /*<<< orphan*/  RB5; int /*<<< orphan*/  RB4; int /*<<< orphan*/  RB3; int /*<<< orphan*/  RB2; int /*<<< orphan*/  RB1; int /*<<< orphan*/  RB0; int /*<<< orphan*/  LB5; int /*<<< orphan*/  LB4; int /*<<< orphan*/  LB3; int /*<<< orphan*/  LB2; int /*<<< orphan*/  LB1; int /*<<< orphan*/  LB0; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOUND_MASK_VOLUME ; 
 int /*<<< orphan*/  TUMBLER_BASS ; 
 int /*<<< orphan*/  TUMBLER_DRC ; 
 int /*<<< orphan*/  TUMBLER_LB0 ; 
 int /*<<< orphan*/  TUMBLER_LB1 ; 
 int /*<<< orphan*/  TUMBLER_LB2 ; 
 int /*<<< orphan*/  TUMBLER_LB3 ; 
 int /*<<< orphan*/  TUMBLER_LB4 ; 
 int /*<<< orphan*/  TUMBLER_LB5 ; 
 int /*<<< orphan*/  TUMBLER_MCR ; 
 int /*<<< orphan*/  TUMBLER_MIXER1 ; 
 int /*<<< orphan*/  TUMBLER_MIXER2 ; 
 int /*<<< orphan*/  TUMBLER_RB0 ; 
 int /*<<< orphan*/  TUMBLER_RB1 ; 
 int /*<<< orphan*/  TUMBLER_RB2 ; 
 int /*<<< orphan*/  TUMBLER_RB3 ; 
 int /*<<< orphan*/  TUMBLER_RB4 ; 
 int /*<<< orphan*/  TUMBLER_RB5 ; 
 int /*<<< orphan*/  TUMBLER_TREBLE ; 
 int /*<<< orphan*/  TUMBLER_VOLUME ; 
 struct tumbler_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 TYPE_1__ tumbler_initdata ; 
 int /*<<< orphan*/  FUNC3 (struct tumbler_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct snd_mixer *m)
{
	struct tumbler_softc *sc;
	u_int		x = 0;

	sc = FUNC0(FUNC1(m));

        FUNC3(sc, TUMBLER_LB0, tumbler_initdata.LB0);
	FUNC3(sc, TUMBLER_LB1, tumbler_initdata.LB1);
	FUNC3(sc, TUMBLER_LB2, tumbler_initdata.LB2);
	FUNC3(sc, TUMBLER_LB3, tumbler_initdata.LB3);
	FUNC3(sc, TUMBLER_LB4, tumbler_initdata.LB4);
	FUNC3(sc, TUMBLER_LB5, tumbler_initdata.LB5);
	FUNC3(sc, TUMBLER_RB0, tumbler_initdata.RB0);
	FUNC3(sc, TUMBLER_RB1, tumbler_initdata.RB1);
	FUNC3(sc, TUMBLER_RB1, tumbler_initdata.RB1);
	FUNC3(sc, TUMBLER_RB2, tumbler_initdata.RB2);
	FUNC3(sc, TUMBLER_RB3, tumbler_initdata.RB3);
	FUNC3(sc, TUMBLER_RB4, tumbler_initdata.RB4);
	FUNC3(sc, TUMBLER_RB5, tumbler_initdata.RB5);
	FUNC3(sc, TUMBLER_MCR, tumbler_initdata.MCR);
	FUNC3(sc, TUMBLER_DRC, tumbler_initdata.DRC);
        FUNC3(sc, TUMBLER_VOLUME, tumbler_initdata.VOLUME);
	FUNC3(sc, TUMBLER_TREBLE, tumbler_initdata.TREBLE);
	FUNC3(sc, TUMBLER_BASS, tumbler_initdata.BASS);
	FUNC3(sc, TUMBLER_MIXER1, tumbler_initdata.MIXER1);
	FUNC3(sc, TUMBLER_MIXER2, tumbler_initdata.MIXER2);

	x |= SOUND_MASK_VOLUME;
	FUNC2(m, x);

	return (0);
}