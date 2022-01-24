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
struct ucred {int /*<<< orphan*/  cr_label; } ;
struct mac_biba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_BIBA_TYPE_HIGH ; 
 int /*<<< orphan*/  MAC_BIBA_TYPE_LOW ; 
 struct mac_biba* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_biba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ucred *cred)
{
	struct mac_biba *label;

	label = FUNC0(cred->cr_label);
	FUNC1(label, MAC_BIBA_TYPE_LOW, 0, NULL);
	FUNC2(label, MAC_BIBA_TYPE_LOW, 0, NULL, MAC_BIBA_TYPE_HIGH,
	    0, NULL);
}