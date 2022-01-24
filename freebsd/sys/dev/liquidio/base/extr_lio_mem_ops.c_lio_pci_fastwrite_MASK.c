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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMOPS_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct octeon_device *oct, uint32_t offset,
		  uint8_t *hostbuf, uint32_t len)
{

	while ((len) && ((unsigned long)offset) & 7) {
		FUNC2(oct, offset++, *(hostbuf++));
		len--;
	}

	FUNC0(oct, MEMOPS_IDX);

	while (len >= 8) {
		FUNC1(oct, offset, *((uint64_t *)hostbuf));
		offset += 8;
		hostbuf += 8;
		len -= 8;
	}

	FUNC0(oct, MEMOPS_IDX);

	while (len--)
		FUNC2(oct, offset++, *(hostbuf++));
}