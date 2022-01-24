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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CBBR_IOBASE0 ; 
 int CBBR_IOLIMIT0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(device_t brdev, int win, uint32_t start, uint32_t end)
{
	int basereg;
	int limitreg;

	if ((win < 0) || (win > 1)) {
		FUNC0((brdev,
		    "cbb_cardbus_io_open: window out of range %d\n", win));
		return (EINVAL);
	}

	basereg = win * 8 + CBBR_IOBASE0;
	limitreg = win * 8 + CBBR_IOLIMIT0;

	FUNC2(brdev, basereg, start, 4);
	FUNC2(brdev, limitreg, end, 4);
	FUNC1(brdev, SYS_RES_IOPORT);
	return (0);
}