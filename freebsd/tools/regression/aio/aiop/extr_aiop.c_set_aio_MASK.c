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
struct aiocb {int aio_fildes; int aio_nbytes; char* aio_buf; int /*<<< orphan*/  aio_offset; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  scalar_t__ iot_t ;

/* Variables and functions */
 scalar_t__ IOT_READ ; 
 int FUNC0 (struct aiocb*) ; 
 int FUNC1 (struct aiocb*) ; 
 int /*<<< orphan*/  FUNC2 (struct aiocb*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void
FUNC4(struct aiocb *a, iot_t iot, int fd, off_t offset, int size, char *buf)
{
	int r;
	FUNC2(a, sizeof(*a));
	a->aio_fildes = fd;
	a->aio_nbytes = size;
	a->aio_offset = offset;
	a->aio_buf = buf;
	if (iot == IOT_READ)
		r = FUNC0(a);
	else
		r = FUNC1(a);
	if (r != 0)
		FUNC3(1, "set_aio call failed");
}