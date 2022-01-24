#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* qkey; } ;
struct TYPE_6__ {TYPE_2__ qkey; } ;
struct TYPE_10__ {TYPE_1__ key; void* dqp_dct; } ;
struct mlx5_wqe_datagram_seg {TYPE_5__ av; } ;
struct mlx5_av {int dummy; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  av; } ;
struct TYPE_8__ {int remote_qpn; int remote_qkey; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int MLX5_EXTENDED_UD_AV ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct ib_send_wr*) ; 

__attribute__((used)) static void FUNC4(struct mlx5_wqe_datagram_seg *dseg,
			     struct ib_send_wr *wr)
{
	FUNC1(&dseg->av, &FUNC2(FUNC3(wr)->ah)->av, sizeof(struct mlx5_av));
	dseg->av.dqp_dct = FUNC0(FUNC3(wr)->remote_qpn | MLX5_EXTENDED_UD_AV);
	dseg->av.key.qkey.qkey = FUNC0(FUNC3(wr)->remote_qkey);
}