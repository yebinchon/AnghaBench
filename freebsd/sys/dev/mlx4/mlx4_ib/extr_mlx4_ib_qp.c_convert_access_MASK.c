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
typedef  int __be32 ;

/* Variables and functions */
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int /*<<< orphan*/  MLX4_WQE_FMR_AND_BIND_PERM_ATOMIC ; 
 int /*<<< orphan*/  MLX4_WQE_FMR_AND_BIND_PERM_REMOTE_READ ; 
 int /*<<< orphan*/  MLX4_WQE_FMR_AND_BIND_PERM_REMOTE_WRITE ; 
 int /*<<< orphan*/  MLX4_WQE_FMR_PERM_LOCAL_READ ; 
 int /*<<< orphan*/  MLX4_WQE_FMR_PERM_LOCAL_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 FUNC1(int acc)
{
	return (acc & IB_ACCESS_REMOTE_ATOMIC ?
		FUNC0(MLX4_WQE_FMR_AND_BIND_PERM_ATOMIC)       : 0) |
	       (acc & IB_ACCESS_REMOTE_WRITE  ?
		FUNC0(MLX4_WQE_FMR_AND_BIND_PERM_REMOTE_WRITE) : 0) |
	       (acc & IB_ACCESS_REMOTE_READ   ?
		FUNC0(MLX4_WQE_FMR_AND_BIND_PERM_REMOTE_READ)  : 0) |
	       (acc & IB_ACCESS_LOCAL_WRITE   ? FUNC0(MLX4_WQE_FMR_PERM_LOCAL_WRITE)  : 0) |
		FUNC0(MLX4_WQE_FMR_PERM_LOCAL_READ);
}