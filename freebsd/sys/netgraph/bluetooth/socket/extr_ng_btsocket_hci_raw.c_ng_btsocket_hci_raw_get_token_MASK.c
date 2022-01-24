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
typedef  scalar_t__ u_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ng_btsocket_hci_raw_token ; 
 int /*<<< orphan*/  ng_btsocket_hci_raw_token_mtx ; 

__attribute__((used)) static void
FUNC2(u_int32_t *token)
{
	FUNC0(&ng_btsocket_hci_raw_token_mtx);
  
	if (++ ng_btsocket_hci_raw_token == 0)
		ng_btsocket_hci_raw_token = 1;
 
	*token = ng_btsocket_hci_raw_token;
 
	FUNC1(&ng_btsocket_hci_raw_token_mtx);
}