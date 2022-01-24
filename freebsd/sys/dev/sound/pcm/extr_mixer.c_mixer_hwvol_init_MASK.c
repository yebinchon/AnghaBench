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
struct snd_mixer {int hwvol_step; int /*<<< orphan*/  hwvol_mixer; } ;
struct cdev {struct snd_mixer* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  SOUND_MIXER_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct snd_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct cdev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_hw_snd_hwvol_mixer ; 

int
FUNC6(device_t dev)
{
	struct snd_mixer *m;
	struct cdev *pdev;

	pdev = FUNC5(dev);
	m = pdev->si_drv1;

	m->hwvol_mixer = SOUND_MIXER_VOLUME;
	m->hwvol_step = 5;
	FUNC0(FUNC3(dev),
	    FUNC2(FUNC4(dev)),
            OID_AUTO, "hwvol_step", CTLFLAG_RWTUN, &m->hwvol_step, 0, "");
	FUNC1(FUNC3(dev),
	    FUNC2(FUNC4(dev)),
            OID_AUTO, "hwvol_mixer", CTLTYPE_STRING | CTLFLAG_RWTUN, m, 0,
	    sysctl_hw_snd_hwvol_mixer, "A", "");
	return 0;
}