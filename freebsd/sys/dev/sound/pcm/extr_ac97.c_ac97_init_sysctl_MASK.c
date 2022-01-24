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
typedef  int u_int16_t ;
struct ac97_info {int /*<<< orphan*/ * dev; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  codec ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_REG_POWER ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct ac97_info*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_hw_snd_ac97_eapd ; 

__attribute__((used)) static void
FUNC8(struct ac97_info *codec)
{
	u_int16_t orig, val;

	if (codec == NULL || codec->dev == NULL)
		return;
	FUNC6(codec->lock);
	orig = FUNC2(codec, AC97_REG_POWER);
	FUNC3(codec, AC97_REG_POWER, orig ^ 0x8000);
	val = FUNC2(codec, AC97_REG_POWER);
	FUNC3(codec, AC97_REG_POWER, orig);
	FUNC7(codec->lock);
	if ((val & 0x8000) == (orig & 0x8000))
		return;
	FUNC0(FUNC4(codec->dev),
	    FUNC1(FUNC5(codec->dev)),
            OID_AUTO, "eapd", CTLTYPE_INT | CTLFLAG_RW,
	    codec, sizeof(codec), sysctl_hw_snd_ac97_eapd,
	    "I", "AC97 External Amplifier");
}