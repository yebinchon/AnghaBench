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
struct iiccmd {int dummy; } ;

/* Variables and functions */
 int EX_IOERR ; 
 int EX_NOINPUT ; 
 int EX_OK ; 
 int /*<<< orphan*/  I2CRSTCARD ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct iiccmd*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct iiccmd cmd, char *dev)
{
	int fd, error;

	fd = FUNC3(dev, O_RDWR);
	if (fd == -1) {
		FUNC1(stderr, "Error opening I2C controller (%s) for "
		    "resetting: %s\n", dev, FUNC5(errno));
		return (EX_NOINPUT);
	}

	FUNC4("Resetting I2C controller on %s: ", dev);
	error = FUNC2(fd, I2CRSTCARD, &cmd);
	FUNC0 (fd);

	if (error) {
		FUNC4("error: %s\n", FUNC5(errno));
		return (EX_IOERR);
	} else {
		FUNC4("OK\n");
		return (EX_OK);
	}
}