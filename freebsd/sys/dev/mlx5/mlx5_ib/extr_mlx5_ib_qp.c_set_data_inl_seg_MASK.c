#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5_wqe_inline_seg {int /*<<< orphan*/  byte_count; } ;
struct TYPE_3__ {void* qend; } ;
struct mlx5_ib_qp {int max_inline_data; TYPE_1__ sq; } ;
struct ib_send_wr {int num_sge; TYPE_2__* sg_list; } ;
struct TYPE_4__ {int length; scalar_t__ addr; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int MLX5_INLINE_SEG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 void* FUNC3 (struct mlx5_ib_qp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct mlx5_ib_qp *qp, struct ib_send_wr *wr,
			    void *wqe, int *sz)
{
	struct mlx5_wqe_inline_seg *seg;
	void *qend = qp->sq.qend;
	void *addr;
	int inl = 0;
	int copy;
	int len;
	int i;

	seg = wqe;
	wqe += sizeof(*seg);
	for (i = 0; i < wr->num_sge; i++) {
		addr = (void *)(unsigned long)(wr->sg_list[i].addr);
		len  = wr->sg_list[i].length;
		inl += len;

		if (FUNC4(inl > qp->max_inline_data))
			return -ENOMEM;

		if (FUNC4(wqe + len > qend)) {
			copy = qend - wqe;
			FUNC2(wqe, addr, copy);
			addr += copy;
			len -= copy;
			wqe = FUNC3(qp, 0);
		}
		FUNC2(wqe, addr, len);
		wqe += len;
	}

	seg->byte_count = FUNC1(inl | MLX5_INLINE_SEG);

	*sz = FUNC0(inl + sizeof(seg->byte_count), 16) / 16;

	return 0;
}