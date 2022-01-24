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
typedef  int __be16 ;

/* Variables and functions */
 int MLX4_CQE_STATUS_IPOK ; 
 int MLX4_CQE_STATUS_IPV4 ; 
 int MLX4_CQE_STATUS_IPV4F ; 
 int MLX4_CQE_STATUS_IPV4OPT ; 
 int MLX4_CQE_STATUS_IPV6 ; 
 int MLX4_CQE_STATUS_TCP ; 
 int MLX4_CQE_STATUS_UDP ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(__be16 status, __be16 checksum)
{
	return ((status & FUNC0(MLX4_CQE_STATUS_IPV4      |
				      MLX4_CQE_STATUS_IPV4F     |
				      MLX4_CQE_STATUS_IPV4OPT   |
				      MLX4_CQE_STATUS_IPV6      |
				      MLX4_CQE_STATUS_IPOK)) ==
		FUNC0(MLX4_CQE_STATUS_IPV4        |
			    MLX4_CQE_STATUS_IPOK))              &&
		(status & FUNC0(MLX4_CQE_STATUS_UDP       |
				      MLX4_CQE_STATUS_TCP))     &&
		checksum == FUNC0(0xffff);
}