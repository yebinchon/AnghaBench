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
 unsigned int FUNC1 (struct agg_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct agg_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct agg_info*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static u_int16_t
FUNC4(struct agg_info *ess, unsigned ch, u_int16_t reg)
{
	FUNC3(ess, WPREG_CRAM_PTR, reg | (ch << 4));
	if (FUNC2(ess, reg | (ch << 4)) != 0)
		FUNC0(ess->dev, "wp_rdapu() indexing timed out.\n");
	return FUNC1(ess, WPREG_DATA_PORT);
}