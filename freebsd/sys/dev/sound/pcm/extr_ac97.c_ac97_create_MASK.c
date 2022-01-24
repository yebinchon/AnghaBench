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
struct ac97_info {int /*<<< orphan*/  flags; void* devinfo; int /*<<< orphan*/  dev; int /*<<< orphan*/  methods; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  kobj_class_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_F_EAPD_INV ; 
 int /*<<< orphan*/  M_AC97 ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int SD_F_SOFTPCMVOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ac97_info* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*) ; 

struct ac97_info *
FUNC10(device_t dev, void *devinfo, kobj_class_t cls)
{
	struct ac97_info *codec;
	int i;

	codec = FUNC4(sizeof(*codec), M_AC97, M_WAITOK | M_ZERO);
	FUNC9(codec->name, sizeof(codec->name), "%s:ac97",
	    FUNC1(dev));
	codec->lock = FUNC8(codec->name, "ac97 codec");
	codec->methods = FUNC3(cls, M_AC97, M_WAITOK | M_ZERO);
	codec->dev = dev;
	codec->devinfo = devinfo;
	codec->flags = 0;

	if (FUNC7(FUNC0(dev), FUNC2(dev),
	    "eapdinv", &i) == 0 && i != 0)
		codec->flags |= AC97_F_EAPD_INV;

	if (FUNC7(FUNC0(dev), FUNC2(dev),
	    "softpcmvol", &i) == 0 && i != 0)
		FUNC6(dev, FUNC5(dev) | SD_F_SOFTPCMVOL);

	return codec;
}