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
struct mlx4_ib_demux_ctx {int /*<<< orphan*/  tid; } ;
typedef  int __be64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 

__be64 FUNC2(struct mlx4_ib_demux_ctx *ctx)
{
	return FUNC1(FUNC0(&ctx->tid)) |
		FUNC1(0xff00000000000000LL);
}