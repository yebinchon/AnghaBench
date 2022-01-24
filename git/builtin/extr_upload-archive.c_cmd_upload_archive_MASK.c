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
struct pollfd {int fd; int events; int revents; } ;
struct child_process {char const** member_0; int out; int err; int git_cmd; } ;

/* Variables and functions */
 int EINTR ; 
 int POLLIN ; 
 int /*<<< orphan*/  deadchild ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (struct pollfd*,int,int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  upload_archive_usage ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(int argc, const char **argv, const char *prefix)
{
	struct child_process writer = { argv };

	if (argc == 2 && !FUNC10(argv[1], "-h"))
		FUNC12(upload_archive_usage);

	/*
	 * Set up sideband subprocess.
	 *
	 * We (parent) monitor and read from child, sending its fd#1 and fd#2
	 * multiplexed out to our fd#1.  If the child dies, we tell the other
	 * end over channel #3.
	 */
	argv[0] = "upload-archive--writer";
	writer.out = writer.err = -1;
	writer.git_cmd = 1;
	if (FUNC9(&writer)) {
		int err = errno;
		FUNC5(1, "NACK unable to spawn subprocess\n");
		FUNC0("upload-archive: %s", FUNC11(err));
	}

	FUNC5(1, "ACK\n");
	FUNC4(1);

	while (1) {
		struct pollfd pfd[2];

		pfd[0].fd = writer.out;
		pfd[0].events = POLLIN;
		pfd[1].fd = writer.err;
		pfd[1].events = POLLIN;
		if (FUNC6(pfd, 2, -1) < 0) {
			if (errno != EINTR) {
				FUNC2("poll failed resuming");
				FUNC8(1);
			}
			continue;
		}
		if (pfd[1].revents & POLLIN)
			/* Status stream ready */
			if (FUNC7(pfd[1].fd, 2))
				continue;
		if (pfd[0].revents & POLLIN)
			/* Data stream ready */
			if (FUNC7(pfd[0].fd, 1))
				continue;

		if (FUNC3(&writer))
			FUNC1("%s", deadchild);
		FUNC4(1);
		break;
	}
	return 0;
}