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
struct snd_mixer {int dummy; } ;
struct sc_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENVY24_MIX_MASK ; 
 int /*<<< orphan*/  ENVY24_MIX_REC_MASK ; 
 int /*<<< orphan*/  ENVY24_MT_VOLRATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 
 struct sc_info* FUNC2 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct snd_mixer *m)
{
	struct sc_info *sc = FUNC2(m);

#if(0)
	device_printf(sc->dev, "envy24mixer_init()\n");
#endif
	if (sc == NULL)
		return -1;

	/* set volume control rate */
	FUNC5(sc->lock);
	FUNC1(sc, ENVY24_MT_VOLRATE, 0x30, 1); /* 0x30 is default value */

	FUNC3(m, ENVY24_MIX_MASK);
	FUNC4(m, ENVY24_MIX_REC_MASK);
	FUNC6(sc->lock);

	return 0;
}