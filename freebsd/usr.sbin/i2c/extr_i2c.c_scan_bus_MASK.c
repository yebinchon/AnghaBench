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
typedef  int /*<<< orphan*/  uint8_t ;
struct skip_range {int start; int end; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct iiccmd {int slave; int last; int nmsgs; struct iic_msg* msgs; scalar_t__ count; } ;
struct iic_rdwr_data {int slave; int last; int nmsgs; struct iic_msg* msgs; scalar_t__ count; } ;
struct iic_msg {int len; int slave; int /*<<< orphan*/  flags; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 scalar_t__ ENODEV ; 
 scalar_t__ EOPNOTSUPP ; 
 int EX_NOINPUT ; 
 int EX_OK ; 
 int /*<<< orphan*/  I2CRDWR ; 
 int /*<<< orphan*/  I2CRSTCARD ; 
 int /*<<< orphan*/  I2CSTART ; 
 int /*<<< orphan*/  I2CSTOP ; 
 int /*<<< orphan*/  IIC_M_RD ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 struct skip_range FUNC7 (char*) ; 
 int FUNC8 (char*,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (scalar_t__) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 

__attribute__((used)) static int
FUNC12(struct iiccmd cmd, char *dev, int skip, char *skip_addr)
{
	struct iic_msg rdmsg;
	struct iic_rdwr_data rdwrdata;
	struct skip_range addr_range = { 0, 0 };
	int *tokens, fd, error, i, index, j;
	int len = 0, do_skip = 0, no_range = 1, num_found = 0, use_read_xfer = 0;
	uint8_t rdbyte;

	fd = FUNC5(dev, O_RDWR);
	if (fd == -1) {
		FUNC1(stderr, "Error opening I2C controller (%s) for "
		    "scanning: %s\n", dev, FUNC9(errno));
		return (EX_NOINPUT);
	}

	if (skip) {
		len = FUNC10(skip_addr);
		if (FUNC11(skip_addr, "..") != NULL) {
			addr_range = FUNC7(skip_addr);
			no_range = 0;
		} else {
			tokens = (int *)FUNC4((len / 2 + 1) * sizeof(int));
			if (tokens == NULL) {
				FUNC1(stderr, "Error allocating tokens "
				    "buffer\n");
				error = -1;
				goto out;
			}
			index = FUNC8(skip_addr, tokens,
			    len / 2 + 1);
		}

		if (!no_range && (addr_range.start > addr_range.end)) {
			FUNC1(stderr, "Skip address out of range\n");
			error = -1;
			goto out;
		}
	}

	FUNC6("Scanning I2C devices on %s: ", dev);

start_over:
	if (use_read_xfer) {
		FUNC1(stderr, 
		    "Hardware may not support START/STOP scanning; "
		    "trying less-reliable read method.\n");
	}

	for (i = 1; i < 127; i++) {

		if (skip && ( addr_range.start < addr_range.end)) {
			if (i >= addr_range.start && i <= addr_range.end)
				continue;

		} else if (skip && no_range)
			for (j = 0; j < index; j++) {
				if (tokens[j] == i) {
					do_skip = 1;
					break;
				}
			}

		if (do_skip) {
			do_skip = 0;
			continue;
		}

		cmd.slave = i << 1;
		cmd.last = 1;
		cmd.count = 0;
		error = FUNC3(fd, I2CRSTCARD, &cmd);
		if (error) {
			FUNC1(stderr, "Controller reset failed\n");
			goto out;
		}
		if (use_read_xfer) {
			rdmsg.buf = &rdbyte;
			rdmsg.len = 1;
			rdmsg.flags = IIC_M_RD;
			rdmsg.slave = i << 1;
			rdwrdata.msgs = &rdmsg;
			rdwrdata.nmsgs = 1;
			error = FUNC3(fd, I2CRDWR, &rdwrdata);
		} else {
			cmd.slave = i << 1;
			cmd.last = 1;
			error = FUNC3(fd, I2CSTART, &cmd);
			if (errno == ENODEV || errno == EOPNOTSUPP) {
				/* If START not supported try reading. */
				use_read_xfer = 1;
				goto start_over;
			}
			FUNC3(fd, I2CSTOP);
		}
		if (error == 0) {
			++num_found;
			FUNC6("%02x ", i);
		}
	}

	/*
	 * If we found nothing, maybe START is not supported and returns a
	 * generic error code such as EIO or ENXIO, so try again using reads.
	 */
	if (num_found == 0) {
		if (!use_read_xfer) {
			use_read_xfer = 1;
			goto start_over;
		}
		FUNC6("<none found>");
	}
	FUNC6("\n");

	error = FUNC3(fd, I2CRSTCARD, &cmd);
out:
	FUNC0(fd);
	if (skip && no_range)
		FUNC2(tokens);

	if (error) {
		FUNC1(stderr, "Error scanning I2C controller (%s): %s\n",
		    dev, FUNC9(errno));
		return (EX_NOINPUT);
	} else
		return (EX_OK);
}