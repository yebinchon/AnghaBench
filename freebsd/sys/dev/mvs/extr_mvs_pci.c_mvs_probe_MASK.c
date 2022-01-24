#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ rev; char* name; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* mvs_ids ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	char buf[64];
	int i;
	uint32_t devid = FUNC1(dev);
	uint8_t revid = FUNC2(dev);

	for (i = 0; mvs_ids[i].id != 0; i++) {
		if (mvs_ids[i].id == devid &&
		    mvs_ids[i].rev <= revid) {
			FUNC3(buf, sizeof(buf), "%s SATA controller",
			    mvs_ids[i].name);
			FUNC0(dev, buf);
			return (BUS_PROBE_DEFAULT);
		}
	}
	return (ENXIO);
}