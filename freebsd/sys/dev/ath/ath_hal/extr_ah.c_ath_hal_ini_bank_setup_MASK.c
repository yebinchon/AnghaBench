#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int cols; int rows; } ;
typedef  TYPE_1__ HAL_INI_ARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int,int) ; 

void
FUNC2(uint32_t data[], const HAL_INI_ARRAY *ia, int col)
{
	int r;

	FUNC0(col < ia->cols);
	for (r = 0; r < ia->rows; r++)
		data[r] = FUNC1(ia, r, col);
}