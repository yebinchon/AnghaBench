#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bwn_mac {TYPE_2__* mac_sc; } ;
struct TYPE_3__ {int /*<<< orphan*/  ic_macaddr; } ;
struct TYPE_4__ {TYPE_1__ sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_MACFILTER_SELF ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac)
{

	FUNC1(mac);
	FUNC0(mac, BWN_MACFILTER_SELF,
	    mac->mac_sc->sc_ic.ic_macaddr);
}