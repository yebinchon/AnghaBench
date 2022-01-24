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
typedef  int uint16_t ;
struct resource {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct resource*,scalar_t__) ; 

__attribute__((used)) static uint16_t
FUNC1(struct resource* res, uint8_t reg)
{
	uint16_t v;

	v = FUNC0(res, reg);
	v <<= 8;
	v |= FUNC0(res, reg + 1);
	return (v);
}