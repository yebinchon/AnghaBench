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
struct ib_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IB_UMAD_MAX_PORTS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  overflow_maj ; 
 int /*<<< orphan*/  overflow_map ; 

__attribute__((used)) static int FUNC3(struct ib_device *device)
{
	int ret;

	if (!overflow_maj) {
		ret = FUNC0(&overflow_maj, 0, IB_UMAD_MAX_PORTS * 2,
					  "infiniband_mad");
		if (ret) {
			FUNC1(&device->dev,
				"couldn't register dynamic device number\n");
			return ret;
		}
	}

	ret = FUNC2(overflow_map, IB_UMAD_MAX_PORTS);
	if (ret >= IB_UMAD_MAX_PORTS)
		return -1;

	return ret;
}