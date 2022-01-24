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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 scalar_t__ AGP_CAPID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
#define  AGP_MODE_V2_RATE_1x 132 
#define  AGP_MODE_V2_RATE_2x 131 
#define  AGP_MODE_V2_RATE_4x 130 
#define  AGP_MODE_V3_RATE_4x 129 
#define  AGP_MODE_V3_RATE_8x 128 
 scalar_t__ AGP_STATUS ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC6(int fd, struct pci_conf *p, uint8_t ptr)
{
	uint32_t status, command;

	status = FUNC5(fd, &p->pc_sel, ptr + AGP_STATUS, 4);
	command = FUNC5(fd, &p->pc_sel, ptr + AGP_CAPID, 4);
	FUNC4("AGP ");
	if (FUNC1(status)) {
		FUNC4("v3 ");
		if (FUNC2(status) & AGP_MODE_V3_RATE_8x)
			FUNC4("8x ");
		if (FUNC2(status) & AGP_MODE_V3_RATE_4x)
			FUNC4("4x ");
	} else {
		if (FUNC2(status) & AGP_MODE_V2_RATE_4x)
			FUNC4("4x ");
		if (FUNC2(status) & AGP_MODE_V2_RATE_2x)
			FUNC4("2x ");
		if (FUNC2(status) & AGP_MODE_V2_RATE_1x)
			FUNC4("1x ");
	}
	if (FUNC3(status))
		FUNC4("SBA ");
	if (FUNC0(command)) {
		FUNC4("enabled at ");
		if (FUNC1(command)) {
			FUNC4("v3 ");
			switch (FUNC2(command)) {
			case AGP_MODE_V3_RATE_8x:
				FUNC4("8x ");
				break;
			case AGP_MODE_V3_RATE_4x:
				FUNC4("4x ");
				break;
			}
		} else
			switch (FUNC2(command)) {
			case AGP_MODE_V2_RATE_4x:
				FUNC4("4x ");
				break;
			case AGP_MODE_V2_RATE_2x:
				FUNC4("2x ");
				break;
			case AGP_MODE_V2_RATE_1x:
				FUNC4("1x ");
				break;
			}
		if (FUNC3(command))
			FUNC4("SBA ");
	} else
		FUNC4("disabled");
}