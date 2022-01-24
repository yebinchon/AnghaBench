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
 int BWN_HF_EDCF ; 
 int /*<<< orphan*/  BWN_IFSCTL ; 
 int BWN_IFSCTL_USE_EDCF ; 
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC5(struct bwn_mac *mac)
{

	FUNC4(mac);

	/* enable WME support. */
	FUNC3(mac, FUNC2(mac) | BWN_HF_EDCF);
	FUNC1(mac, BWN_IFSCTL, FUNC0(mac, BWN_IFSCTL) |
	    BWN_IFSCTL_USE_EDCF);
}