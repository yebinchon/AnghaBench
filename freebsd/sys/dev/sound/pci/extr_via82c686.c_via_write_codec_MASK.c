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
typedef  int u_int32_t ;
struct via_info {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIA_CODEC_CTL ; 
 int FUNC0 (int) ; 
 int VIA_CODEC_PRIVALID ; 
 scalar_t__ FUNC1 (struct via_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct via_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(kobj_t obj, void *addr, int reg, u_int32_t val)
{
	struct via_info *via = addr;

	if (FUNC1(via)) return -1;

	FUNC2(via, VIA_CODEC_CTL, VIA_CODEC_PRIVALID | FUNC0(reg) | val, 4);

	return 0;
}