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
struct fm801_info {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FM_CODEC_CMD ; 
 int FM_CODEC_CMD_BUSY ; 
 int FM_CODEC_CMD_READ ; 
 int FM_CODEC_CMD_VALID ; 
 int /*<<< orphan*/  FM_CODEC_DATA ; 
 int TIMO ; 
 int FUNC2 (struct fm801_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fm801_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *devinfo, int regno)
{
	struct fm801_info *fm801 = (struct fm801_info *)devinfo;
	int i;

	for (i = 0; i < TIMO && FUNC2(fm801,FM_CODEC_CMD,2) & FM_CODEC_CMD_BUSY; i++) {
		FUNC0(10000);
		FUNC1("fm801 rdcd: 1 - DELAY\n");
	}
	if (i >= TIMO) {
		FUNC4("fm801 rdcd: codec busy\n");
		return 0;
	}

	FUNC3(fm801,FM_CODEC_CMD, regno|FM_CODEC_CMD_READ,2);

	for (i = 0; i < TIMO && !(FUNC2(fm801,FM_CODEC_CMD,2) & FM_CODEC_CMD_VALID); i++)
	{
		FUNC0(10000);
		FUNC1("fm801 rdcd: 2 - DELAY\n");
	}
	if (i >= TIMO) {
		FUNC4("fm801 rdcd: write codec invalid\n");
		return 0;
	}

	return FUNC2(fm801,FM_CODEC_DATA,2);
}