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
struct bwn_phy_n_iq_comp {void* b1; void* a1; void* b0; void* a0; } ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_NPHY_C1_RXIQ_COMPA0 ; 
 int /*<<< orphan*/  BWN_NPHY_C1_RXIQ_COMPB0 ; 
 int /*<<< orphan*/  BWN_NPHY_C2_RXIQ_COMPA1 ; 
 int /*<<< orphan*/  BWN_NPHY_C2_RXIQ_COMPB1 ; 
 void* FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC2(struct bwn_mac *mac, bool write,
					struct bwn_phy_n_iq_comp *pcomp)
{
	if (write) {
		FUNC1(mac, BWN_NPHY_C1_RXIQ_COMPA0, pcomp->a0);
		FUNC1(mac, BWN_NPHY_C1_RXIQ_COMPB0, pcomp->b0);
		FUNC1(mac, BWN_NPHY_C2_RXIQ_COMPA1, pcomp->a1);
		FUNC1(mac, BWN_NPHY_C2_RXIQ_COMPB1, pcomp->b1);
	} else {
		pcomp->a0 = FUNC0(mac, BWN_NPHY_C1_RXIQ_COMPA0);
		pcomp->b0 = FUNC0(mac, BWN_NPHY_C1_RXIQ_COMPB0);
		pcomp->a1 = FUNC0(mac, BWN_NPHY_C2_RXIQ_COMPA1);
		pcomp->b1 = FUNC0(mac, BWN_NPHY_C2_RXIQ_COMPB1);
	}
}