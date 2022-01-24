#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int U32 ;
struct TYPE_5__ {int Settings; } ;
struct TYPE_6__ {TYPE_1__ VolumeSettings; } ;
typedef  TYPE_2__ CONFIG_PAGE_RAID_VOL_0 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpt_unit ; 
 TYPE_2__* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 char FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static int
FUNC12(int ac, char **av)
{
	CONFIG_PAGE_RAID_VOL_0 *volume;
	U32 Settings, NewSettings;
	U8 VolumeBus, VolumeID;
	char *s1;
	int error, fd;

	if (ac != 3) {
		FUNC11("volume cache: %s", ac > 3 ? "extra arguments" :
		    "missing arguments");
		return (EINVAL);
	}

        for (s1 = av[2]; *s1 != '\0'; s1++)
                *s1 = FUNC8(*s1);
	if ((FUNC6(av[2], "enable")) && (FUNC6(av[2], "enabled")) &&
	    (FUNC6(av[2], "disable")) && (FUNC6(av[2], "disabled"))) {
		FUNC11("volume cache: invalid flag, must be 'enable' or 'disable'\n");
		return (EINVAL);
	}

	fd = FUNC3(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC9("mpt_open");
		return (error);
	}

	error = FUNC2(fd, av[1], &VolumeBus, &VolumeID);
	if (error) {
		FUNC10(error, "Invalid volume: %s", av[1]);
		FUNC0(fd);
		return (error);
	}

	volume = FUNC5(fd, VolumeBus, VolumeID, NULL);
	if (volume == NULL) {
		FUNC0(fd);
		return (errno);
	}

	Settings = volume->VolumeSettings.Settings;

	NewSettings = Settings;
	if (FUNC7(av[2], "enable", sizeof("enable")) == 0)
		NewSettings |= 0x01;
	if (FUNC7(av[2], "disable", sizeof("disable")) == 0)
		NewSettings &= ~0x01;

	if (NewSettings == Settings) {
		FUNC11("volume cache unchanged");
		FUNC1(volume);
		FUNC0(fd);
		return (0);
	}

	volume->VolumeSettings.Settings = NewSettings;
	error = FUNC4(fd, MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS,
	    VolumeBus, VolumeID, 0, *(U32 *)&volume->VolumeSettings, NULL, 0,
	    NULL, NULL, 0, NULL, NULL, 0);
	if (error)
		FUNC10(error, "volume cache change failed");

	FUNC0(fd);
	return (error);
}