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
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_CN23XX_RST_SOFT_RST ; 
 int /*<<< orphan*/  LIO_CN23XX_SLI_SCRATCH1 ; 
 int /*<<< orphan*/  LIO_CN23XX_SLI_WIN_WR_MASK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct octeon_device *oct)
{

	FUNC6(oct, LIO_CN23XX_SLI_WIN_WR_MASK_REG, 0xFF);

	FUNC0(oct, "BIST enabled for CN23XX soft reset\n");

	FUNC6(oct, LIO_CN23XX_SLI_SCRATCH1, 0x1234ULL);

	/* Initiate chip-wide soft reset */
	FUNC3(oct, LIO_CN23XX_RST_SOFT_RST);
	FUNC4(oct, 1, LIO_CN23XX_RST_SOFT_RST);

	/* Wait for 100ms as Octeon resets. */
	FUNC2(100);

	if (FUNC5(oct, LIO_CN23XX_SLI_SCRATCH1)) {
		FUNC1(oct, "Soft reset failed\n");
		return (1);
	}

	FUNC0(oct, "Reset completed\n");

	/* restore the  reset value */
	FUNC6(oct, LIO_CN23XX_SLI_WIN_WR_MASK_REG, 0xFF);

	return (0);
}