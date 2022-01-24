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
typedef  int /*<<< orphan*/  uint32_t ;
struct octeon_device {scalar_t__ num_oqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cn23xx_pf ; 
 scalar_t__ FUNC4 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(struct octeon_device *oct)
{
	uint32_t	desc_size = 0, num_descs = 0, oq_no = 0;

	if (FUNC1(oct)) {
		num_descs =
			FUNC3(FUNC0(oct,
								   cn23xx_pf));
		desc_size =
			FUNC2(FUNC0(oct,
								  cn23xx_pf));
	}

	oct->num_oqs = 0;

	if (FUNC4(oct, oq_no, num_descs, desc_size, NULL)) {
		return (1);
	}

	oct->num_oqs++;

	return (0);
}