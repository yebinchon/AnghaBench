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
typedef  int /*<<< orphan*/  u_int ;
struct tdfx_pio_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IOCV_IN 129 
#define  IOCV_OUT 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tdfx_pio_data*) ; 
 int FUNC2 (struct tdfx_pio_data*) ; 

__attribute__((used)) static int
FUNC3(u_int cmd, struct tdfx_pio_data *piod) 
{
	/* Two types of PIO, INPUT and OUTPUT, as the name suggests */
	switch(FUNC0(cmd)) {
		case IOCV_OUT: 
			return FUNC1(piod);
			break;
		case IOCV_IN:
			return FUNC2(piod);
			break;
		default:
			return -EINVAL;
	}
}