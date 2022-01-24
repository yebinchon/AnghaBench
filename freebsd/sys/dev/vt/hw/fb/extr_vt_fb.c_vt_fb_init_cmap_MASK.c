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

/* Variables and functions */
 int /*<<< orphan*/  COLOR_FORMAT_RGB ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(uint32_t *cmap, int depth)
{

	switch (depth) {
	case 8:
		return (FUNC0(cmap, COLOR_FORMAT_RGB,
		    0x7, 5, 0x7, 2, 0x3, 0));
	case 15:
		return (FUNC0(cmap, COLOR_FORMAT_RGB,
		    0x1f, 10, 0x1f, 5, 0x1f, 0));
	case 16:
		return (FUNC0(cmap, COLOR_FORMAT_RGB,
		    0x1f, 11, 0x3f, 5, 0x1f, 0));
	case 24:
	case 32: /* Ignore alpha. */
		return (FUNC0(cmap, COLOR_FORMAT_RGB,
		    0xff, 16, 0xff, 8, 0xff, 0));
	default:
		return (1);
	}
}