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
 int /*<<< orphan*/  BWN_MACCTL ; 
 int BWN_MACCTL_RADIO_LOCK ; 
 int /*<<< orphan*/  BWN_PHYVER ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct bwn_mac *mac)
{

	FUNC0(mac, BWN_PHYVER);
	FUNC2(mac, BWN_MACCTL,
	    FUNC1(mac, BWN_MACCTL) & ~BWN_MACCTL_RADIO_LOCK);
}