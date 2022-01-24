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
struct hdaa_devinfo {int /*<<< orphan*/  nid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int APPLE_INTEL_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
#define  HDA_CODEC_ALC1150 137 
 int HDA_CODEC_ALC255 ; 
 int HDA_CODEC_ALC256 ; 
 int HDA_CODEC_ALC269 ; 
#define  HDA_CODEC_VT1708S_0 136 
#define  HDA_CODEC_VT1708S_1 135 
#define  HDA_CODEC_VT1708S_2 134 
#define  HDA_CODEC_VT1708S_3 133 
#define  HDA_CODEC_VT1708S_4 132 
#define  HDA_CODEC_VT1708S_5 131 
#define  HDA_CODEC_VT1708S_6 130 
#define  HDA_CODEC_VT1708S_7 129 
#define  HDA_CODEC_VT1818S 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hdaa_devinfo*) ; 
 int FUNC3 (struct hdaa_devinfo*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 

void
FUNC6(struct hdaa_devinfo *devinfo)
{
	device_t dev = devinfo->dev;
	uint32_t id, subid, val;

	id = FUNC3(devinfo);
	subid = FUNC2(devinfo);

	switch (id) {
	case HDA_CODEC_VT1708S_0:
	case HDA_CODEC_VT1708S_1:
	case HDA_CODEC_VT1708S_2:
	case HDA_CODEC_VT1708S_3:
	case HDA_CODEC_VT1708S_4:
	case HDA_CODEC_VT1708S_5:
	case HDA_CODEC_VT1708S_6:
	case HDA_CODEC_VT1708S_7:
		/* Enable Mic Boost Volume controls. */
		FUNC1(dev, FUNC0(0, devinfo->nid,
		    0xf98, 0x01));
		/* Fall though */
	case HDA_CODEC_VT1818S:
		/* Don't bypass mixer. */
		FUNC1(dev, FUNC0(0, devinfo->nid,
		    0xf88, 0xc0));
		break;
	case HDA_CODEC_ALC1150:
		if (subid == 0xd9781462) {
			/* Too low volume on MSI H170 GAMING M3. */
			FUNC5(dev, 0x20, 0x07, 0x7cb);
		}
		break;
	}
	if (id == HDA_CODEC_ALC255 || id == HDA_CODEC_ALC256) {
		val = FUNC4(dev, 0x20, 0x46);
		FUNC5(dev, 0x20, 0x46, val|0x3000);
	}
	if (subid == APPLE_INTEL_MAC)
		FUNC1(dev, FUNC0(0, devinfo->nid,
		    0x7e7, 0));
	if (id == HDA_CODEC_ALC269) {
		if (subid == 0x16e31043 || subid == 0x831a1043 ||
		    subid == 0x834a1043 || subid == 0x83981043 ||
		    subid == 0x83ce1043) {
			/*
			 * The ditital mics on some Asus laptops produce
			 * differential signals instead of expected stereo.
			 * That results in silence if downmix it to mono.
			 * To workaround, make codec to handle signal as mono.
			 */
			val = FUNC4(dev, 0x20, 0x07);
			FUNC5(dev, 0x20, 0x07, val|0x80);
		}
		if (subid == 0x15171043) {
			/* Increase output amp on ASUS UX31A by +5dB. */
			FUNC5(dev, 0x20, 0x12, 0x2800);
		}
	}
}