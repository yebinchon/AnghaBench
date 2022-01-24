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
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_SCRATCH ; 
 int /*<<< orphan*/  BWN_SCRATCH_LONG_RETRY ; 
 int /*<<< orphan*/  BWN_SCRATCH_SHORT_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac, int s, int l)
{

	FUNC1(mac, BWN_SCRATCH, BWN_SCRATCH_SHORT_RETRY, FUNC0(s, 0xf));
	FUNC1(mac, BWN_SCRATCH, BWN_SCRATCH_LONG_RETRY, FUNC0(l, 0xf));
}