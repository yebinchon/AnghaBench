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
 int /*<<< orphan*/  FUNC0 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct bwi_mac *mac)
{
	FUNC2(mac, 0x4, 0xff);
	FUNC2(mac, 0x5, 0xfb);

	FUNC0(mac, 0x10, 0x8);
	FUNC0(mac, 0x11, 0x8);

	FUNC1(mac, 0x15, 0xaa00);
}