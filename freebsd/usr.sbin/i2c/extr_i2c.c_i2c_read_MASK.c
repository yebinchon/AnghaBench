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
struct options {int width; int addr; scalar_t__ mode; int count; int /*<<< orphan*/  off; } ;
struct iiccmd {int slave; int count; int last; char* buf; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  I2CREAD ; 
 int /*<<< orphan*/  I2CRPTSTART ; 
 int /*<<< orphan*/  I2CSTART ; 
 int /*<<< orphan*/  I2CSTOP ; 
 int /*<<< orphan*/  I2CWRITE ; 
 scalar_t__ I2C_MODE_REPEATED_START ; 
 scalar_t__ I2C_MODE_STOP_START ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (struct iiccmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC8(char *dev, struct options i2c_opt, char *i2c_buf)
{
	struct iiccmd cmd;
	int fd, error, bufsize;
	char *err_msg, data = 0, *buf;

	fd = FUNC6(dev, O_RDWR);
	if (fd == -1)
		FUNC2(1, "open failed");

	FUNC0(&cmd, sizeof(cmd));

	if (i2c_opt.width) {
		cmd.slave = i2c_opt.addr;
		cmd.count = 1;
		cmd.last = 0;
		cmd.buf = &data;
		error = FUNC5(fd, I2CSTART, &cmd);
		if (error == -1) {
			err_msg = "ioctl: error sending start condition";
			goto err1;
		}
		bufsize = i2c_opt.width / 8;
		buf = FUNC7(bufsize, i2c_opt.off);
		if (buf == NULL) {
			err_msg = "error: offset malloc";
			goto err1;
		}

		cmd.count = bufsize;
		cmd.buf = buf;
		cmd.last = 0;
		error = FUNC5(fd, I2CWRITE, &cmd);
		FUNC4(buf);
		if (error == -1) {
			err_msg = "ioctl: error writing offset";
			goto err1;
		}

		if (i2c_opt.mode == I2C_MODE_STOP_START) {
			error = FUNC5(fd, I2CSTOP);
			if (error == -1) {
				err_msg = "error sending stop condition";
				goto err2;
			}
		}
	}
	cmd.slave = i2c_opt.addr | 1;
	cmd.count = 1;
	cmd.last = 0;
	cmd.buf = &data;
	if (i2c_opt.mode == I2C_MODE_STOP_START || i2c_opt.width == 0) {
		error = FUNC5(fd, I2CSTART, &cmd);
		if (error == -1) {
			err_msg = "ioctl: error sending start condition";
			goto err2;
		}
	} else if (i2c_opt.mode == I2C_MODE_REPEATED_START) {
		error = FUNC5(fd, I2CRPTSTART, &cmd);
		if (error == -1) {
			err_msg = "ioctl: error sending repeated start "
			    "condition";
			goto err1;
		}
	}

	cmd.count = i2c_opt.count;
	cmd.buf = i2c_buf;
	cmd.last = 1;
	error = FUNC5(fd, I2CREAD, &cmd);
	if (error == -1) {
		err_msg = "ioctl: error while reading";
		goto err1;
	}

	error = FUNC5(fd, I2CSTOP);
	if (error == -1) {
		err_msg = "error sending stop condtion\n";
		goto err2;
	}

	FUNC1(fd);
	return (0);

err1:
	error = FUNC5(fd, I2CSTOP);
	if (error == -1)
		FUNC3(stderr, "error sending stop condition\n");
err2:
	if (err_msg)
		FUNC3(stderr, "%s\n", err_msg);

	FUNC1(fd);
	return (1);
}