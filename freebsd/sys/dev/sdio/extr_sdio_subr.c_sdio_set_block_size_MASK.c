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
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct sdio_func {int fn; int cur_blksize; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ SD_IO_FBR_IOBLKSZ ; 
 int SD_IO_FBR_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct sdio_func *f, uint16_t bs)
{
	device_t pdev;
	int error;
	uint32_t addr;
	uint16_t v;

	if (!FUNC3(f->dev))
		return (EOPNOTSUPP);

	pdev = FUNC1(f->dev);
	addr = SD_IO_FBR_START * f->fn + SD_IO_FBR_IOBLKSZ;
	v = FUNC2(bs);
	/* Always write through F0. */
	error = FUNC0(pdev, 0, addr, v & 0xff);
	if (error == 0)
		error = FUNC0(pdev, 0, addr + 1,
		    (v >> 8) & 0xff);
	if (error == 0)
		f->cur_blksize = bs;

	return (error);
}