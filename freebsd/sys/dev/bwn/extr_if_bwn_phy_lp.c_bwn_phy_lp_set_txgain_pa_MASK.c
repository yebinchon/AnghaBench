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
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac, uint16_t gain)
{

	FUNC1(mac, FUNC0(0xfb), 0xe03f, gain << 6);
	FUNC1(mac, FUNC0(0xfd), 0x80ff, gain << 8);
}