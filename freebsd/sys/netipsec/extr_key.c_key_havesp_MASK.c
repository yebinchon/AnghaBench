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
typedef  size_t u_int ;

/* Variables and functions */
 size_t IPSEC_DIR_INBOUND ; 
 size_t IPSEC_DIR_OUTBOUND ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * V_sptree ; 

int
FUNC1(u_int dir)
{

	return (dir == IPSEC_DIR_INBOUND || dir == IPSEC_DIR_OUTBOUND ?
		FUNC0(&V_sptree[dir]) != NULL : 1);
}