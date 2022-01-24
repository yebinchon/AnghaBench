#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int id; scalar_t__ revid; char* name; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* hdacc_codecs ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	uint32_t id, revid;
	char buf[128];
	int i;

	id = ((uint32_t)FUNC5(dev) << 16) + FUNC2(dev);
	revid = ((uint32_t)FUNC3(dev) << 8) + FUNC4(dev);

	for (i = 0; i < FUNC6(hdacc_codecs); i++) {
		if (!FUNC0(hdacc_codecs[i].id, id))
			continue;
		if (hdacc_codecs[i].revid != 0 &&
		    hdacc_codecs[i].revid != revid)
			continue;
		break;
	}
	if (i < FUNC6(hdacc_codecs)) {
		if ((hdacc_codecs[i].id & 0xffff) != 0xffff)
			FUNC9(buf, hdacc_codecs[i].name, sizeof(buf));
		else
			FUNC7(buf, sizeof(buf), "%s (0x%04x)",
			    hdacc_codecs[i].name, FUNC2(dev));
	} else
		FUNC7(buf, sizeof(buf), "Generic (0x%04x)", id);
	FUNC8(buf, " HDA CODEC", sizeof(buf));
	FUNC1(dev, buf);
	return (BUS_PROBE_DEFAULT);
}