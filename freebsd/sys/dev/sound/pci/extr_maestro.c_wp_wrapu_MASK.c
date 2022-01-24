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
typedef  unsigned int u_int16_t ;
struct agg_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPREG_CRAM_PTR ; 
 int /*<<< orphan*/  WPREG_DATA_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct agg_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct agg_info*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct agg_info *ess, unsigned ch, u_int16_t reg, u_int16_t data)
{
	FUNC2(ess, WPREG_CRAM_PTR, reg | (ch << 4));
	if (FUNC1(ess, reg | (ch << 4)) == 0) {
		FUNC2(ess, WPREG_DATA_PORT, data);
		if (FUNC1(ess, data) != 0)
			FUNC0(ess->dev,
			    "wp_wrapu() write timed out.\n");
	} else {
		FUNC0(ess->dev, "wp_wrapu() indexing timed out.\n");
	}
}