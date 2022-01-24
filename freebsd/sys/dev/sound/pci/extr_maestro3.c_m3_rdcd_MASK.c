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
struct sc_info {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  CODEC_COMMAND ; 
 int /*<<< orphan*/  CODEC_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(kobj_t kobj, void *devinfo, int regno)
{
	struct sc_info *sc = (struct sc_info *)devinfo;
	u_int32_t data;

	if (FUNC3(sc)) {
		FUNC1(sc->dev, "m3_rdcd timed out.\n");
		return -1;
	}
	FUNC4(sc, CODEC_COMMAND, (regno & 0x7f) | 0x80);
	FUNC0(50); /* ac97 cycle = 20.8 usec */
	if (FUNC3(sc)) {
		FUNC1(sc->dev, "m3_rdcd timed out.\n");
		return -1;
	}
	data = FUNC2(sc, CODEC_DATA);
	return data;
}