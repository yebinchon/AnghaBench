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
struct mlx5_srq_attr {int flags; int log_page_size; int wqe_shift; int log_size; int page_offset; int lwm; int pd; int /*<<< orphan*/  db_record; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_SRQ_FLAG_WQ_SIG ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  log_wq_pg_sz ; 
 int /*<<< orphan*/  log_wq_stride ; 
 int /*<<< orphan*/  log_wq_sz ; 
 int /*<<< orphan*/  lwm ; 
 int /*<<< orphan*/  page_offset ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  wq_signature ; 

__attribute__((used)) static void FUNC2(void *wq, struct mlx5_srq_attr *in)
{
	FUNC0(wq,   wq, wq_signature,  !!(in->flags & MLX5_SRQ_FLAG_WQ_SIG));
	FUNC0(wq,   wq, log_wq_pg_sz,  in->log_page_size);
	FUNC0(wq,   wq, log_wq_stride, in->wqe_shift + 4);
	FUNC0(wq,   wq, log_wq_sz,	  in->log_size);
	FUNC0(wq,   wq, page_offset,	  in->page_offset);
	FUNC0(wq,   wq, lwm,		  in->lwm);
	FUNC0(wq,   wq, pd,		  in->pd);
	FUNC1(wq, wq, dbr_addr,	  in->db_record);
}