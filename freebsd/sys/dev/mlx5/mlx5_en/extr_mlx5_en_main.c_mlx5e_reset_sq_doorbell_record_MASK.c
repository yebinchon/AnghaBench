#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ d64; void** d32; } ;
struct mlx5e_sq {int sqn; TYPE_1__ doorbell; } ;

/* Variables and functions */
 int MLX5_OPCODE_NOP ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_sq*,void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct mlx5e_sq *sq)
{

	sq->doorbell.d32[0] = FUNC0(MLX5_OPCODE_NOP);
	sq->doorbell.d32[1] = FUNC0(sq->sqn << 8);
	FUNC1(sq, sq->doorbell.d32, 0);
	sq->doorbell.d64 = 0;
}