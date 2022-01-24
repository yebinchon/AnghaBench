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
typedef  long uint64_t ;
typedef  long off_t ;
typedef  long lba_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_DATA ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_HOLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int errno ; 
 int FUNC3 (long,char*,size_t,long,int) ; 
 int FUNC4 (long) ; 
 int FUNC5 (long,int,long*) ; 
 void* FUNC6 (int,long,size_t,long*) ; 
 int /*<<< orphan*/  FUNC7 (void*,size_t) ; 
 long image_swap_pgsz ; 
 long FUNC8 (int,long,int /*<<< orphan*/ ) ; 
 long secsz ; 

__attribute__((used)) static int
FUNC9(lba_t blk, int fd, uint64_t *sizep)
{
	off_t cur, data, end, hole, pos, iof;
	void *mp;
	char *buf;
	uint64_t bytesize;
	size_t iosz, sz;
	int error;

	/*
	 * We'd like to know the size of the file and we must
	 * be able to seek in order to mmap(2). If this isn't
	 * possible, then treat the file as a stream/pipe.
	 */
	end = FUNC8(fd, 0L, SEEK_END);
	if (end == -1L)
		return (FUNC5(blk, fd, sizep));

	/*
	 * We need the file opened for the duration and our
	 * caller is going to close the file. Make a dup(2)
	 * so that control the faith of the descriptor.
	 */
	fd = FUNC2(fd);
	if (fd == -1)
		return (errno);

	iosz = secsz * image_swap_pgsz;

	bytesize = 0;
	cur = pos = 0;
	error = 0;
	while (!error && cur < end) {
		hole = FUNC8(fd, cur, SEEK_HOLE);
		if (hole == -1)
			hole = end;
		data = FUNC8(fd, cur, SEEK_DATA);
		if (data == -1)
			data = end;

		/*
		 * Treat the entire file as data if sparse files
		 * are not supported by the underlying file system.
		 */
		if (hole == end && data == end)
			data = cur;

		if (cur == hole && data > hole) {
			hole = pos;
			pos = data & ~((uint64_t)secsz - 1);

			blk += (pos - hole) / secsz;
			error = FUNC4(blk);

			bytesize += pos - hole;
			cur = data;
		} else if (cur == data && hole > data) {
			data = pos;
			pos = (hole + secsz - 1) & ~((uint64_t)secsz - 1);

			while (data < pos) {
				sz = (pos - data > (off_t)iosz)
				    ? iosz : (size_t)(pos - data);

				buf = mp = FUNC6(fd, data, sz, &iof);
				if (mp != NULL) {
					buf += iof;
					error = FUNC3(blk, buf,
					    sz, data, fd);
					FUNC7(mp, sz);
				} else
					error = errno;

				blk += sz / secsz;
				bytesize += sz;
				data += sz;
			}
			cur = hole;
		} else {
			/*
			 * I don't know what this means or whether it
			 * can happen at all...
			 */
			FUNC0(0);
		}
	}
	if (error)
		FUNC1(fd);
	if (!error && sizep != NULL)
		*sizep = bytesize;
	return (error);
}