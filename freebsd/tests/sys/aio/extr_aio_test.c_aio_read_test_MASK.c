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
struct sigevent {int dummy; } ;
struct aiocb {int aio_nbytes; struct sigevent aio_sigevent; scalar_t__ aio_offset; int /*<<< orphan*/  aio_fildes; struct aiocb* aio_buf; } ;
struct aio_context {int ac_buflen; int /*<<< orphan*/  ac_seed; struct aiocb* ac_buffer; int /*<<< orphan*/  ac_read_fd; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  scalar_t__ (* completion ) (struct aiocb*) ;
typedef  int /*<<< orphan*/  aio ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct aiocb*) ; 
 scalar_t__ FUNC2 (struct aiocb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct aiocb*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct aio_context *ac, completion comp, struct sigevent *sev)
{
	struct aiocb aio;
	ssize_t len;

	FUNC4(ac->ac_buffer, ac->ac_buflen);
	FUNC4(&aio, sizeof(aio));
	aio.aio_buf = ac->ac_buffer;
	aio.aio_nbytes = ac->ac_buflen;
	aio.aio_fildes = ac->ac_read_fd;
	aio.aio_offset = 0;
	if (sev)
		aio.aio_sigevent = *sev;

	if (FUNC1(&aio) < 0)
		FUNC3("aio_read failed: %s", FUNC5(errno));

	len = comp(&aio);
	if (len < 0)
		FUNC3("aio failed: %s", FUNC5(errno));

	FUNC0(len, ac->ac_buflen,
	    "aio short read (%jd)", (intmax_t)len);

	if (FUNC2(ac->ac_buffer, ac->ac_buflen, ac->ac_seed) == 0)
		FUNC3("buffer mismatched");
}