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
struct sc_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sc_info* FUNC1 (struct snd_mixer*) ; 

__attribute__((used)) static int
FUNC2(struct snd_mixer *m)
{
	struct sc_info *sc = FUNC1(m);

	if (sc == NULL)
		return -1;
#if(0)
	device_printf(sc->dev, "envy24htmixer_reinit()\n");
#endif

	return 0;
}