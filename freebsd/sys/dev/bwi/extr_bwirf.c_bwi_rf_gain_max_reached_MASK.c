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
struct bwi_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int,int,int) ; 
 int FUNC2 (struct bwi_mac*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_mac*,int,int) ; 

__attribute__((used)) static int
FUNC4(struct bwi_mac *mac, int idx)
{
	FUNC1(mac, 0x812, 0xf0ff, idx << 8);
	FUNC1(mac, 0x15, 0xfff, 0xa000);
	FUNC3(mac, 0x15, 0xf000);

	FUNC0(20);

	return (FUNC2(mac, 0x2d) >= 0xdfc);
}