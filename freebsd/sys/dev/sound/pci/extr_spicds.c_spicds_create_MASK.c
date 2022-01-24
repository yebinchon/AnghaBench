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
struct spicds_info {int num; int format; int dvc; scalar_t__ cif; int /*<<< orphan*/  type; void* devinfo; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  spicds_ctrl ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AK452X_DVC_DEMOFF ; 
 int AK452X_DVC_ZCE ; 
 int AK452X_DVC_ZTM1024 ; 
 int AK452X_FORMAT_1X ; 
 int AK452X_FORMAT_256FSN ; 
 int AK452X_FORMAT_I2S ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_SPICDS ; 
 int /*<<< orphan*/  SPICDS_NAMELEN ; 
 int /*<<< orphan*/  SPICDS_TYPE_AK4524 ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

struct spicds_info *
FUNC5(device_t dev, void *devinfo, int num, spicds_ctrl ctrl)
{
	struct spicds_info *codec;

#if(0)
	device_printf(dev, "spicds_create(dev, devinfo, %d, ctrl)\n", num);
#endif
	codec = (struct spicds_info *)FUNC2(sizeof *codec, M_SPICDS, M_NOWAIT);
	if (codec == NULL)
		return NULL;

	FUNC4(codec->name, SPICDS_NAMELEN, "%s:spicds%d", FUNC0(dev), num);
	codec->lock = FUNC3(codec->name, codec->name);
	codec->dev = dev;
	codec->ctrl = ctrl;
	codec->devinfo = devinfo;
	codec->num = num;
	codec->type = SPICDS_TYPE_AK4524;
	codec->cif = 0;
	codec->format = AK452X_FORMAT_I2S | AK452X_FORMAT_256FSN | AK452X_FORMAT_1X;
	codec->dvc = AK452X_DVC_DEMOFF | AK452X_DVC_ZTM1024 | AK452X_DVC_ZCE;

	return codec;
}