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
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int EFBIG ; 
 scalar_t__ OFF_MAX ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SIGXFSZ ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigxfsz ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,char*,int) ; 

int
FUNC10(int argc, char **argv)
{
	int		fd = 0;
	off_t		offset = (OFF_MAX - 1);
	off_t		lseek_ret = 0;
	int		write_ret = 0;
	int		err = 0;
	char		mybuf[5];
	char		*testfile;

	if (argc != 2) {
		FUNC8(argv[0]);
	}

	(void) FUNC5(SIGXFSZ, sigxfsz);

	testfile = FUNC6(argv[1]);

	fd = FUNC2(testfile, O_CREAT | O_RDWR);
	if (fd < 0) {
		FUNC3("Failed to create testfile");
		err = errno;
		goto out;
	}

	lseek_ret = FUNC1(fd, offset, SEEK_SET);
	if (lseek_ret < 0) {
		FUNC3("Failed to seek to end of testfile");
		err = errno;
		goto out;
	}

	write_ret = FUNC9(fd, mybuf, 1);
	if (write_ret < 0) {
		FUNC3("Failed to write to end of file");
		err = errno;
		goto out;
	}

	offset = 0;
	lseek_ret = FUNC1(fd, offset, SEEK_CUR);
	if (lseek_ret < 0) {
		FUNC3("Failed to seek to end of file");
		err = errno;
		goto out;
	}

	write_ret = FUNC9(fd, mybuf, 1);
	if (write_ret < 0) {
		if (errno == EFBIG) {
			(void) FUNC4("write errno=EFBIG: success\n");
			err = 0;
		} else {
			FUNC3("Did not receive EFBIG");
			err = errno;
		}
	} else {
		(void) FUNC4("write completed successfully, test failed\n");
		err = 1;
	}

out:
	(void) FUNC7(testfile);
	FUNC0(testfile);
	return (err);
}