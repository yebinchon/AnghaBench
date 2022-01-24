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
struct aiocb {int aio_fildes; size_t aio_offset; size_t aio_nbytes; int /*<<< orphan*/ * aio_buf; } ;
typedef  size_t off_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_IOERR ; 
 size_t MAXIO ; 
 int MAXIOS ; 
 int FUNC0 (struct aiocb**,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct aiocb*) ; 
 int /*<<< orphan*/ * buf ; 
 int /*<<< orphan*/  FUNC2 (struct aiocb*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static void
FUNC5(int fd, size_t size, off_t off)
{
	struct aiocb aios[MAXIOS];
	off_t o;
	int n, error;
	struct aiocb *aiop;

	// if size > MAXIO, use AIO to write n - 1 pieces in parallel
	for (n = 0, o = 0; size > MAXIO; n++, size -= MAXIO, o += MAXIO) {
		aiop = &aios[n];
		FUNC2(aiop, sizeof(*aiop));
		aiop->aio_buf = &buf[o];
		aiop->aio_fildes = fd;
		aiop->aio_offset = off + o;
		aiop->aio_nbytes = MAXIO;
		error = FUNC1(aiop);
		if (error != 0)
			FUNC3(EX_IOERR, "AIO write submit error");
	}
	// Use synchronous writes for the runt of size <= MAXIO
	error = FUNC4(fd, &buf[o], size, off + o);
	if (error < 0)
		FUNC3(EX_IOERR, "Sync write error");
	for (; n > 0; n--) {
		error = FUNC0(&aiop, NULL);
		if (error < 0)
			FUNC3(EX_IOERR, "AIO write wait error");
	}
}