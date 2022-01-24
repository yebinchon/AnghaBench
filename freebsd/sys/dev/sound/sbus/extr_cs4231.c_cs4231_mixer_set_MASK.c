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
typedef  size_t u_int32_t ;
struct snd_mixer {int dummy; } ;
struct cs4231_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*) ; 
 int /*<<< orphan*/ ** cs4231_mix_table ; 
 int /*<<< orphan*/  FUNC2 (struct cs4231_softc*,int /*<<< orphan*/ *,size_t) ; 
 struct cs4231_softc* FUNC3 (struct snd_mixer*) ; 

__attribute__((used)) static int
FUNC4(struct snd_mixer *m, u_int32_t dev, u_int32_t left,
    u_int32_t right)
{
	struct cs4231_softc *sc;

	sc = FUNC3(m);
	FUNC0(sc);
	FUNC2(sc, &cs4231_mix_table[dev][0], left);
	FUNC2(sc, &cs4231_mix_table[dev][1], right);
	FUNC1(sc);

	return (left | (right << 8));
}