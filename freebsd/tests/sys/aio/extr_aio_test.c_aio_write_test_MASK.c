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
struct aiocb {scalar_t__ aio_nbytes; struct sigevent aio_sigevent; scalar_t__ aio_offset; int /*<<< orphan*/  aio_fildes; int /*<<< orphan*/  aio_buf; } ;
struct aio_context {scalar_t__ ac_buflen; int /*<<< orphan*/  ac_write_fd; int /*<<< orphan*/  ac_buffer; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  scalar_t__ (* completion ) (struct aiocb*) ;
typedef  int /*<<< orphan*/  aio ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct aiocb*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aiocb*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct aio_context *ac, completion comp, struct sigevent *sev)
{
	struct aiocb aio;
	ssize_t len;

	FUNC2(&aio, sizeof(aio));
	aio.aio_buf = ac->ac_buffer;
	aio.aio_nbytes = ac->ac_buflen;
	aio.aio_fildes = ac->ac_write_fd;
	aio.aio_offset = 0;
	if (sev)
		aio.aio_sigevent = *sev;

	if (FUNC0(&aio) < 0)
		FUNC1("aio_write failed: %s", FUNC3(errno));

	len = comp(&aio);
	if (len < 0)
		FUNC1("aio failed: %s", FUNC3(errno));

	if (len != ac->ac_buflen)
		FUNC1("aio short write (%jd)", (intmax_t)len);
}