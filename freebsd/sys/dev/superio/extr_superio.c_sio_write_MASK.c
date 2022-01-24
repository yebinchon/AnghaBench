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
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct resource* res, uint8_t reg, uint8_t val)
{
	FUNC0(res, 0, reg);
	FUNC0(res, 1, val);
}