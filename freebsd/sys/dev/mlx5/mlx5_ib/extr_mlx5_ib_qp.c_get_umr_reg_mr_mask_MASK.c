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
typedef  int u64 ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int MLX5_MKEY_MASK_A ; 
 int MLX5_MKEY_MASK_FREE ; 
 int MLX5_MKEY_MASK_KEY ; 
 int MLX5_MKEY_MASK_LEN ; 
 int MLX5_MKEY_MASK_LR ; 
 int MLX5_MKEY_MASK_LW ; 
 int MLX5_MKEY_MASK_PAGE_SIZE ; 
 int MLX5_MKEY_MASK_PD ; 
 int MLX5_MKEY_MASK_RR ; 
 int MLX5_MKEY_MASK_RW ; 
 int MLX5_MKEY_MASK_START_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static __be64 FUNC1(void)
{
	u64 result;

	result = MLX5_MKEY_MASK_LEN		|
		 MLX5_MKEY_MASK_PAGE_SIZE	|
		 MLX5_MKEY_MASK_START_ADDR	|
		 MLX5_MKEY_MASK_PD		|
		 MLX5_MKEY_MASK_LR		|
		 MLX5_MKEY_MASK_LW		|
		 MLX5_MKEY_MASK_KEY		|
		 MLX5_MKEY_MASK_RR		|
		 MLX5_MKEY_MASK_RW		|
		 MLX5_MKEY_MASK_A		|
		 MLX5_MKEY_MASK_FREE;

	return FUNC0(result);
}