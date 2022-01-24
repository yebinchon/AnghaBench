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
struct flock {void* l_len; void* l_start; int /*<<< orphan*/  l_whence; } ;
typedef  void* off_t ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  F_FREESP ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int FUNC6 (char*,int) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 size_t FUNC9 (int,char*,size_t) ; 

int
FUNC10(int argc, char *argv[])
{
	char *filename, *buf;
	size_t filesize;
	off_t start_off, off_len;
	int  fd, ch;
	struct flock fl;

	while ((ch = FUNC4(argc, argv, "l:s:n:")) != EOF) {
		switch (ch) {
		case 'l':
			filesize = FUNC0(optarg);
			break;
		case 's':
			start_off = FUNC0(optarg);
			break;
		case 'n':
			off_len = FUNC0(optarg);
			break;
		default:
			FUNC8(argv[0]);
			break;
		}
	}

	if (optind == argc - 1)
		filename = argv[optind];
	else
		FUNC8(argv[0]);

	buf = (char *)FUNC5(filesize);

	if ((fd = FUNC6(filename, O_RDWR|O_CREAT|O_TRUNC)) < 0) {
		FUNC7("open");
		return (1);
	}
	if (FUNC9(fd, buf, filesize) < filesize) {
		FUNC7("write");
		return (1);
	}
#if UNSUPPORTED
	fl.l_whence = SEEK_SET;
	fl.l_start = start_off;
	fl.l_len = off_len;
	if (fcntl(fd, F_FREESP, &fl) != 0) {
		perror("fcntl");
		return (1);
	}
#else
	FUNC2(stderr, "fcntl: F_FREESP not supported\n");
	return (1);
#endif

	FUNC3(buf);
	return (0);
}