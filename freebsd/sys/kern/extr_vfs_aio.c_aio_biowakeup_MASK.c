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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {int /*<<< orphan*/  kaio_buffer_count; } ;
struct TYPE_3__ {size_t aio_nbytes; scalar_t__ aio_lio_opcode; } ;
struct kaiocb {int outblock; int inblock; TYPE_1__ uaiocb; struct bio* bp; int /*<<< orphan*/  npages; int /*<<< orphan*/  pages; TYPE_2__* pbuf; struct proc* userproc; } ;
struct bio {size_t bio_resid; int bio_flags; int bio_error; scalar_t__ bio_caller1; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaioinfo*) ; 
 int BIO_ERROR ; 
 scalar_t__ LIO_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct kaiocb*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  num_buf_aio ; 
 int /*<<< orphan*/  num_unmapped_aio ; 
 int /*<<< orphan*/  pbuf_zone ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct bio *bp)
{
	struct kaiocb *job = (struct kaiocb *)bp->bio_caller1;
	struct proc *userp;
	struct kaioinfo *ki;
	size_t nbytes;
	int error, nblks;

	/* Release mapping into kernel space. */
	userp = job->userproc;
	ki = userp->p_aioinfo;
	if (job->pbuf) {
		FUNC6((vm_offset_t)job->pbuf->b_data, job->npages);
		FUNC7(pbuf_zone, job->pbuf);
		job->pbuf = NULL;
		FUNC3(&num_buf_aio, 1);
		FUNC0(ki);
		ki->kaio_buffer_count--;
		FUNC1(ki);
	} else
		FUNC3(&num_unmapped_aio, 1);
	FUNC8(job->pages, job->npages);

	bp = job->bp;
	job->bp = NULL;
	nbytes = job->uaiocb.aio_nbytes - bp->bio_resid;
	error = 0;
	if (bp->bio_flags & BIO_ERROR)
		error = bp->bio_error;
	nblks = FUNC4(nbytes);
	if (job->uaiocb.aio_lio_opcode == LIO_WRITE)
		job->outblock += nblks;
	else
		job->inblock += nblks;

	if (error)
		FUNC2(job, -1, error);
	else
		FUNC2(job, nbytes, 0);

	FUNC5(bp);
}