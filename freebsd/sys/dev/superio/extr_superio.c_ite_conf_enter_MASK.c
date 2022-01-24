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
typedef  int uint16_t ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct resource* res, uint16_t port)
{
	FUNC0(res, 0, 0x87);
	FUNC0(res, 0, 0x01);
	FUNC0(res, 0, 0x55);
	FUNC0(res, 0, port == 0x2e ? 0x55 : 0xaa);
}