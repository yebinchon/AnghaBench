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
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
struct aiocb {int dummy; } ;
typedef  int off_t ;
typedef  int iot_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int IOT_READ ; 
 int IOT_WRITE ; 
 int O_DIRECT ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aiocb**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*) ; 
 void* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC13 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC14 (char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct aiocb*,int /*<<< orphan*/ ,int,int,int,char*) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct timeval*,struct timeval*,struct timeval*) ; 

int
FUNC20(int argc, char *argv[])
{
	int fd;
	struct stat sb;
	struct aiocb *aio;
	char **abuf;
	const char *fn;
	int aio_len;
	int io_size, nrun;
	off_t file_size, offset;
	struct aiocb *a;
	int i, n;
	struct timeval st, et, rt;
	float f_rt;
	iot_t iowhat;


	if (argc < 6) {
		FUNC15("Usage: %s <file> <io size> <number of runs> <concurrency> <ro|wo|rw>\n",
		    argv[0]);
		FUNC11(1);
	}

	fn = argv[1];
	io_size = FUNC5(argv[2]);
	if (io_size <= 0)
		FUNC10(1, "the I/O size must be >0");
	nrun = FUNC5(argv[3]);
	if (nrun <= 0)
		FUNC10(1, "the number of runs must be >0");
	aio_len = FUNC5(argv[4]);
	if (aio_len <= 0)
		FUNC10(1, "AIO concurrency must be >0");
	if (FUNC18(argv[5], "ro") == 0)
		iowhat = IOT_READ;
	else if (FUNC18(argv[5], "rw") == 0)
		iowhat = IOT_READ | IOT_WRITE;
	else if (FUNC18(argv[5], "wo") == 0)
		iowhat = IOT_WRITE;
	else
		FUNC10(1, "the I/O type needs to be \"ro\", \"rw\", or \"wo\"!\n");

	/*
	 * Random returns values between 0 and (2^32)-1; only good for 4 gig.
	 * Lets instead treat random() as returning a block offset w/ block size
	 * being "io_size", so we can handle > 4 gig files.
	 */
	if (iowhat == IOT_READ)
		fd = FUNC14(fn, O_RDONLY | O_DIRECT);
	else if (iowhat == IOT_WRITE)
		fd = FUNC14(fn, O_WRONLY | O_DIRECT);
	else
		fd = FUNC14(fn, O_RDWR | O_DIRECT);

	if (fd < 0)
		FUNC9(1, "open failed");
	if (FUNC12(fd, &sb) < 0)
		FUNC9(1, "fstat failed");
	if (FUNC2(sb.st_mode)) {
		file_size = sb.st_size;
	} else if (FUNC0(sb.st_mode) || FUNC1(sb.st_mode)) {
		file_size = FUNC8(fd);
	} else
		FUNC10(1, "unknown file type");
	if (file_size <= 0)
		FUNC10(1, "path provided too small");

	FUNC15("File: %s; File size %jd bytes\n", fn, (intmax_t)file_size);

	aio = FUNC6(aio_len, sizeof(struct aiocb));
	abuf = FUNC6(aio_len, sizeof(char *));
	for (i = 0; i < aio_len; i++)
		abuf[i] = FUNC6(1, io_size * sizeof(char));

	/* Fill with the initial contents */
	FUNC13(&st, NULL);
	for (i = 0; i < aio_len; i++) {
		offset = FUNC16() % (file_size / io_size);
		offset *= io_size;
		FUNC17(aio + i, FUNC7(iowhat), fd, offset, io_size, abuf[i]);
	}

	for (i = 0; i < nrun; i++) {
		FUNC3(&a, NULL);
		n = a - aio;
		FUNC4(n < aio_len);
		FUNC4(n >= 0);
		offset = FUNC16() % (file_size / io_size);
		offset *= io_size;
		FUNC17(aio + n, FUNC7(iowhat), fd, offset, io_size, abuf[n]);
	}

	FUNC13(&et, NULL);
	FUNC19(&et, &st, &rt);
	f_rt = ((float) (rt.tv_usec)) / 1000000.0;
	f_rt += (float) (rt.tv_sec);
	FUNC15("Runtime: %.2f seconds, ", f_rt);
	FUNC15("Op rate: %.2f ops/sec, ", ((float) (nrun))  / f_rt);
	FUNC15("Avg transfer rate: %.2f bytes/sec\n", ((float) (nrun)) * ((float)io_size) / f_rt);



	FUNC11(0);
}