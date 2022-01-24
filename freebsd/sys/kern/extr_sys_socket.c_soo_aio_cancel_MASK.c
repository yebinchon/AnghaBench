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
struct sockbuf {int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  sb_aiojobq; } ;
struct socket {struct sockbuf so_snd; struct sockbuf so_rcv; } ;
struct TYPE_4__ {int aio_lio_opcode; } ;
struct kaiocb {long aio_done; TYPE_2__ uaiocb; TYPE_1__* fd_file; } ;
struct TYPE_3__ {struct socket* f_data; } ;

/* Variables and functions */
 int LIO_READ ; 
 int LIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SB_AIO ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kaiocb*) ; 
 int /*<<< orphan*/  FUNC6 (struct kaiocb*) ; 
 int /*<<< orphan*/  FUNC7 (struct kaiocb*,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 

__attribute__((used)) static void
FUNC8(struct kaiocb *job)
{
	struct socket *so;
	struct sockbuf *sb;
	long done;
	int opcode;

	so = job->fd_file->f_data;
	opcode = job->uaiocb.aio_lio_opcode;
	if (opcode == LIO_READ)
		sb = &so->so_rcv;
	else {
		FUNC0(opcode == LIO_WRITE);
		sb = &so->so_snd;
	}

	FUNC1(sb);
	if (!FUNC6(job))
		FUNC4(&sb->sb_aiojobq, job, list);
	if (FUNC3(&sb->sb_aiojobq))
		sb->sb_flags &= ~SB_AIO;
	FUNC2(sb);

	done = job->aio_done;
	if (done != 0)
		FUNC7(job, done, 0);
	else
		FUNC5(job);
}