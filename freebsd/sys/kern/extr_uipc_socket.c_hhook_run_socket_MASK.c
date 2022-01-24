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
struct socket_hhook_data {void* hctx; int status; int /*<<< orphan*/ * m; struct socket* so; } ;
struct socket {int /*<<< orphan*/  osd; int /*<<< orphan*/  so_vnet; } ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct socket_hhook_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * V_socket_hhh ; 

__attribute__((used)) static int inline
FUNC3(struct socket *so, void *hctx, int32_t h_id)
{
	struct socket_hhook_data hhook_data = {
		.so = so,
		.hctx = hctx,
		.m = NULL,
		.status = 0
	};

	FUNC1(so->so_vnet);
	FUNC2(V_socket_hhh[h_id], &hhook_data, &so->osd);
	FUNC0();

	/* Ugly but needed, since hhooks return void for now */
	return (hhook_data.status);
}