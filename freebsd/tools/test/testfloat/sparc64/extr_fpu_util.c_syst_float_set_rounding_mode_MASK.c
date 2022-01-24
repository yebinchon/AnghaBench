#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int8 ;
struct TYPE_2__ {int /*<<< orphan*/  uf_fsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FSR_RD_MASK ; 
 TYPE_1__ utf ; 

void FUNC1(int8 roundingMode)
{

	utf.uf_fsr &= ~FSR_RD_MASK;
	utf.uf_fsr |= FUNC0((unsigned int)roundingMode & 0x03);
}