#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ucmd ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_ib_create_cq {scalar_t__ reserved; int cqe_size; scalar_t__ buf_addr; int /*<<< orphan*/  db_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  umem; } ;
struct mlx5_ib_cq {TYPE_3__ buf; int /*<<< orphan*/  db; } ;
struct ib_uverbs_cmd_hdr {int dummy; } ;
struct ib_udata {int inlen; } ;
struct ib_ucontext {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_8__ {TYPE_1__* uars; } ;
struct TYPE_10__ {TYPE_2__ uuari; } ;
struct TYPE_7__ {int index; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_ACCESS_LOCAL_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_ADAPTER_PAGE_SHIFT ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cq_context ; 
 int /*<<< orphan*/  create_cq_in ; 
 scalar_t__ FUNC6 (struct mlx5_ib_create_cq*,struct ib_udata*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_ucontext*,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_page_size ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int*,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_ib_dev*,char*,long long,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_ib_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 
 TYPE_4__* FUNC15 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC16(struct mlx5_ib_dev *dev, struct ib_udata *udata,
			  struct ib_ucontext *context, struct mlx5_ib_cq *cq,
			  int entries, u32 **cqb,
			  int *cqe_size, int *index, int *inlen)
{
	struct mlx5_ib_create_cq ucmd;
	size_t ucmdlen;
	int page_shift;
	__be64 *pas;
	int npages;
	int ncont;
	void *cqc;
	int err;

	ucmdlen =
		(udata->inlen - sizeof(struct ib_uverbs_cmd_hdr) <
		 sizeof(ucmd)) ? (sizeof(ucmd) -
				  sizeof(ucmd.reserved)) : sizeof(ucmd);

	if (FUNC6(&ucmd, udata, ucmdlen))
		return -EFAULT;

	if (ucmdlen == sizeof(ucmd) &&
	    ucmd.reserved != 0)
		return -EINVAL;

	if (ucmd.cqe_size != 64 && ucmd.cqe_size != 128)
		return -EINVAL;

	*cqe_size = ucmd.cqe_size;

	cq->buf.umem = FUNC7(context, ucmd.buf_addr,
				   entries * ucmd.cqe_size,
				   IB_ACCESS_LOCAL_WRITE, 1);
	if (FUNC0(cq->buf.umem)) {
		err = FUNC5(cq->buf.umem);
		return err;
	}

	err = FUNC10(FUNC15(context), ucmd.db_addr,
				  &cq->db);
	if (err)
		goto err_umem;

	FUNC9(cq->buf.umem, ucmd.buf_addr, &npages, &page_shift,
			   &ncont, NULL);
	FUNC12(dev, "addr 0x%llx, size %u, npages %d, page_shift %d, ncont %d\n",
		    (long long)ucmd.buf_addr, entries * ucmd.cqe_size, npages, page_shift, ncont);

	*inlen = FUNC4(create_cq_in) +
		 FUNC2(create_cq_in, pas[0]) * ncont;
	*cqb = FUNC14(*inlen);
	if (!*cqb) {
		err = -ENOMEM;
		goto err_db;
	}

	pas = (__be64 *)FUNC1(create_cq_in, *cqb, pas);
	FUNC13(dev, cq->buf.umem, page_shift, pas, 0);

	cqc = FUNC1(create_cq_in, *cqb, cq_context);
	FUNC3(cqc, cqc, log_page_size,
		 page_shift - MLX5_ADAPTER_PAGE_SHIFT);

	*index = FUNC15(context)->uuari.uars[0].index;

	return 0;

err_db:
	FUNC11(FUNC15(context), &cq->db);

err_umem:
	FUNC8(cq->buf.umem);
	return err;
}