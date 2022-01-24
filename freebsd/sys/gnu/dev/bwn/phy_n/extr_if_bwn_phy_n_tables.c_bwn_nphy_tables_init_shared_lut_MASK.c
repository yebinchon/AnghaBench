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
 int /*<<< orphan*/  BWN_NTAB_C0_ADJPLT_R3 ; 
 int /*<<< orphan*/  BWN_NTAB_C0_ESTPLT_R3 ; 
 int /*<<< orphan*/  BWN_NTAB_C0_GAINCTL_R3 ; 
 int /*<<< orphan*/  BWN_NTAB_C0_IQLT_R3 ; 
 int /*<<< orphan*/  BWN_NTAB_C0_LOFEEDTH_R3 ; 
 int /*<<< orphan*/  BWN_NTAB_C1_ADJPLT_R3 ; 
 int /*<<< orphan*/  BWN_NTAB_C1_ESTPLT_R3 ; 
 int /*<<< orphan*/  BWN_NTAB_C1_GAINCTL_R3 ; 
 int /*<<< orphan*/  BWN_NTAB_C1_IQLT_R3 ; 
 int /*<<< orphan*/  BWN_NTAB_C1_LOFEEDTH_R3 ; 
 int /*<<< orphan*/  bwn_ntab_adjustpower0_r3 ; 
 int /*<<< orphan*/  bwn_ntab_adjustpower1_r3 ; 
 int /*<<< orphan*/  bwn_ntab_estimatepowerlt0_r3 ; 
 int /*<<< orphan*/  bwn_ntab_estimatepowerlt1_r3 ; 
 int /*<<< orphan*/  bwn_ntab_gainctl0_r3 ; 
 int /*<<< orphan*/  bwn_ntab_gainctl1_r3 ; 
 int /*<<< orphan*/  bwn_ntab_iqlt0_r3 ; 
 int /*<<< orphan*/  bwn_ntab_iqlt1_r3 ; 
 int /*<<< orphan*/  bwn_ntab_loftlt0_r3 ; 
 int /*<<< orphan*/  bwn_ntab_loftlt1_r3 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bwn_mac *mac)
{
	FUNC0(mac, BWN_NTAB_C0_ESTPLT_R3, bwn_ntab_estimatepowerlt0_r3);
	FUNC0(mac, BWN_NTAB_C1_ESTPLT_R3, bwn_ntab_estimatepowerlt1_r3);
	FUNC0(mac, BWN_NTAB_C0_ADJPLT_R3, bwn_ntab_adjustpower0_r3);
	FUNC0(mac, BWN_NTAB_C1_ADJPLT_R3, bwn_ntab_adjustpower1_r3);
	FUNC0(mac, BWN_NTAB_C0_GAINCTL_R3, bwn_ntab_gainctl0_r3);
	FUNC0(mac, BWN_NTAB_C1_GAINCTL_R3, bwn_ntab_gainctl1_r3);
	FUNC0(mac, BWN_NTAB_C0_IQLT_R3, bwn_ntab_iqlt0_r3);
	FUNC0(mac, BWN_NTAB_C1_IQLT_R3, bwn_ntab_iqlt1_r3);
	FUNC0(mac, BWN_NTAB_C0_LOFEEDTH_R3, bwn_ntab_loftlt0_r3);
	FUNC0(mac, BWN_NTAB_C1_LOFEEDTH_R3, bwn_ntab_loftlt1_r3);
}