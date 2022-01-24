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
typedef  int u_int32_t ;
struct ac97_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AC97_POWER_STATUS ; 
 int /*<<< orphan*/  AC97_REG_POWER ; 
 int /*<<< orphan*/  AC97_REG_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ac97_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct ac97_info *codec)
{
	u_int32_t i, ps;
	FUNC2(codec, AC97_REG_RESET, 0);
	for (i = 0; i < 500; i++) {
		ps = FUNC1(codec, AC97_REG_POWER) & AC97_POWER_STATUS;
		if (ps == AC97_POWER_STATUS)
			return;
		FUNC0(1000);
	}
	FUNC3(codec->dev, "AC97 reset timed out.\n");
}