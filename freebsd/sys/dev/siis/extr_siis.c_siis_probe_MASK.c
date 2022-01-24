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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ id; char* name; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* siis_ids ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	char buf[64];
	int i;
	uint32_t devid = FUNC1(dev);

	for (i = 0; siis_ids[i].id != 0; i++) {
		if (siis_ids[i].id == devid) {
			FUNC2(buf, sizeof(buf), "%s SATA controller",
			    siis_ids[i].name);
			FUNC0(dev, buf);
			return (BUS_PROBE_DEFAULT);
		}
	}
	return (ENXIO);
}