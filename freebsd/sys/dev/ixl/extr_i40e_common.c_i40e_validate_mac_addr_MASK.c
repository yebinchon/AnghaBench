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
typedef  scalar_t__ u8 ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int I40E_ERR_INVALID_MAC_ADDR ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int I40E_SUCCESS ; 

enum i40e_status_code FUNC2(u8 *mac_addr)
{
	enum i40e_status_code status = I40E_SUCCESS;

	FUNC0("i40e_validate_mac_addr");

	/* Broadcast addresses ARE multicast addresses
	 * Make sure it is not a multicast address
	 * Reject the zero address
	 */
	if (FUNC1(mac_addr) ||
	    (mac_addr[0] == 0 && mac_addr[1] == 0 && mac_addr[2] == 0 &&
	      mac_addr[3] == 0 && mac_addr[4] == 0 && mac_addr[5] == 0))
		status = I40E_ERR_INVALID_MAC_ADDR;

	return status;
}