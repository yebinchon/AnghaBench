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
struct resource {int dummy; } ;
struct mss_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SBDSP_CMD ; 
 int /*<<< orphan*/  SBDSP_STATUS ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC3 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct mss_info *mss, device_t dev)
{
	struct resource *sbport;
	int		i, ret, rid;

	rid = 0;
	ret = -1;
	sbport = FUNC1(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
	if (sbport) {
		for (i = 0; i < 1000; i++) {
			if ((FUNC3(sbport, SBDSP_STATUS) & 0x80))
				FUNC0((i > 100) ? 1000 : 10);
			else {
				FUNC4(sbport, SBDSP_CMD, 0x09);
				break;
			}
		}
		for (i = 0; i < 1000; i++) {
			if ((FUNC3(sbport, SBDSP_STATUS) & 0x80))
				FUNC0((i > 100) ? 1000 : 10);
			else {
				FUNC4(sbport, SBDSP_CMD, 0x00);
				ret = 0;
				break;
			}
		}
		FUNC0(1000);
		FUNC2(dev, SYS_RES_IOPORT, rid, sbport);
	}
	return ret;
}