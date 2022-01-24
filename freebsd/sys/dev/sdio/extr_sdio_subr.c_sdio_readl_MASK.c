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
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct sdio_func {int /*<<< orphan*/  fn; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

uint32_t
FUNC3(struct sdio_func *f, uint32_t addr, int *err)
{
	int error;
	uint32_t v;

	error = FUNC0(FUNC1(f->dev), f->fn, addr,
	    sizeof(v), (uint8_t *)&v, false);
	if (error) {
		if (err != NULL)
			*err = error;
		return (0xffffffff);
	} else {
		if (err != NULL)
			*err = 0;
		return (FUNC2(v));
	}
}