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
struct bwn_txgain_entry {int dummy; } ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int,struct bwn_txgain_entry) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int,struct bwn_txgain_entry) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac, int offset,
    struct bwn_txgain_entry data)
{

	if (mac->mac_phy.rev >= 2)
		FUNC1(mac, offset, data);
	else
		FUNC0(mac, offset, data);
}