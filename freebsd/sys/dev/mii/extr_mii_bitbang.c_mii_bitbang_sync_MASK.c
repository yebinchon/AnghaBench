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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  mii_bitbang_ops_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MDC ; 
 int MDIRPHY ; 
 int MDO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void
FUNC1(device_t dev, mii_bitbang_ops_t ops)
{
	int i;
	uint32_t v;

	v = MDIRPHY | MDO;

	FUNC0(v);
	for (i = 0; i < 32; i++) {
		FUNC0(v | MDC);
		FUNC0(v);
	}
}