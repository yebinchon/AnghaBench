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
struct options {int width; int mode; int count; int /*<<< orphan*/  addr; int /*<<< orphan*/  off; } ;
struct iiccmd {int count; char* buf; int /*<<< orphan*/  last; int /*<<< orphan*/  slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2CRPTSTART ; 
 int /*<<< orphan*/  I2CSTART ; 
 int /*<<< orphan*/  I2CSTOP ; 
 int /*<<< orphan*/  I2CWRITE ; 
#define  I2C_MODE_NONE 130 
#define  I2C_MODE_REPEATED_START 129 
#define  I2C_MODE_STOP_START 128 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC9(char *dev, struct options i2c_opt, char *i2c_buf)
{
	struct iiccmd cmd;
	int error, fd, bufsize;
	char *err_msg, *buf;

	fd = FUNC6(dev, O_RDWR);
	if (fd == -1) {
		FUNC3(i2c_buf);
		FUNC1(1, "open failed");
	}

	cmd.slave = i2c_opt.addr;
	error = FUNC4(fd, I2CSTART, &cmd);
	if (error == -1) {
		err_msg = "ioctl: error sending start condition";
		goto err1;
	}

	if (i2c_opt.width) {
		bufsize = i2c_opt.width / 8;
		buf = FUNC7(bufsize, i2c_opt.off);
		if (buf == NULL) {
			err_msg = "error: offset malloc";
			goto err1;
		}
	} else {
		bufsize = 0;
		buf = NULL;
	}

	switch(i2c_opt.mode) {
	case I2C_MODE_STOP_START:
		/*
		 * Write offset where the data will go
		 */
		if (i2c_opt.width) {
			cmd.count = bufsize;
			cmd.buf = buf;
			error = FUNC4(fd, I2CWRITE, &cmd);
			FUNC3(buf);
			if (error == -1) {
				err_msg = "ioctl: error writing offset";
				goto err1;
			}
		}

		error = FUNC4(fd, I2CSTOP);
		if (error == -1) {
			err_msg = "ioctl: error sending stop condition";
			goto err2;
		}
		cmd.slave = i2c_opt.addr;
		error = FUNC4(fd, I2CSTART, &cmd);
		if (error == -1) {
			err_msg = "ioctl: error sending start condition";
			goto err1;
		}

		/*
		 * Write the data
		 */
		cmd.count = i2c_opt.count;
		cmd.buf = i2c_buf;
		cmd.last = 0;
		error = FUNC4(fd, I2CWRITE, &cmd);
		if (error == -1) {
			err_msg = "ioctl: error writing";
			goto err1;
		}
		break;

	case I2C_MODE_REPEATED_START:
		/*
		 * Write offset where the data will go
		 */
		if (i2c_opt.width) {
			cmd.count = bufsize;
			cmd.buf = buf;
			error = FUNC4(fd, I2CWRITE, &cmd);
			FUNC3(buf);
			if (error == -1) {
				err_msg = "ioctl: error writing offset";
				goto err1;
			}
		}

		cmd.slave = i2c_opt.addr;
		error = FUNC4(fd, I2CRPTSTART, &cmd);
		if (error == -1) {
			err_msg = "ioctl: error sending repeated start "
			    "condition";
			goto err1;
		}

		/*
		 * Write the data
		 */
		cmd.count = i2c_opt.count;
		cmd.buf = i2c_buf;
		cmd.last = 0;
		error = FUNC4(fd, I2CWRITE, &cmd);
		if (error == -1) {
			err_msg = "ioctl: error writing";
			goto err1;
		}
		break;

	case I2C_MODE_NONE: /* fall through */
	default:		
		buf = FUNC8(buf, bufsize + i2c_opt.count);
		if (buf == NULL) {
			err_msg = "error: data malloc";
			goto err1;
		}

		FUNC5(buf + bufsize, i2c_buf, i2c_opt.count);
		/*
		 * Write offset and data
		 */
		cmd.count = bufsize + i2c_opt.count;
		cmd.buf = buf;
		cmd.last = 0;
		error = FUNC4(fd, I2CWRITE, &cmd);
		FUNC3(buf);
		if (error == -1) {
			err_msg = "ioctl: error writing";
			goto err1;
		}
		break;
	}
	error = FUNC4(fd, I2CSTOP);
	if (error == -1) {
		err_msg = "ioctl: error sending stop condition";
		goto err2;
	}

	FUNC0(fd);
	return (0);

err1:
	error = FUNC4(fd, I2CSTOP);
	if (error == -1)
		FUNC2(stderr, "error sending stop condition\n");
err2:
	if (err_msg)
		FUNC2(stderr, "%s\n", err_msg);

	FUNC0(fd);
	return (1);
}