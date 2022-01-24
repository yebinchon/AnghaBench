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
struct camdd_io_opts {int write_dev; int min_cmd_size; void* debug; int /*<<< orphan*/  offset; void* queue_depth; int /*<<< orphan*/  blocksize; int /*<<< orphan*/ * dev_name; int /*<<< orphan*/  dev_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAMDD_DEV_FILE ; 
 int /*<<< orphan*/  CAMDD_DEV_PASS ; 
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char**,char*) ; 
 int FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

int
FUNC9(char *args, int is_write, struct camdd_io_opts *io_opts)
{
	char *tmpstr, *tmpstr2;
	char *orig_tmpstr = NULL;
	int retval = 0;

	io_opts->write_dev = is_write;

	tmpstr = FUNC2(args);
	if (tmpstr == NULL) {
		FUNC7("strdup failed");
		retval = 1;
		goto bailout;
	}
	orig_tmpstr = tmpstr;
	while ((tmpstr2 = FUNC4(&tmpstr, ",")) != NULL) {
		char *name, *value;

		/*
		 * If the user creates an empty parameter by putting in two
		 * commas, skip over it and look for the next field.
		 */
		if (*tmpstr2 == '\0')
			continue;

		name = FUNC4(&tmpstr2, "=");
		if (*name == '\0') {
			FUNC8("Got empty I/O parameter name");
			retval = 1;
			goto bailout;
		}
		value = FUNC4(&tmpstr2, "=");
		if ((value == NULL)
		 || (*value == '\0')) {
			FUNC8("Empty I/O parameter value for %s", name);
			retval = 1;
			goto bailout;
		}
		if (FUNC3(name, "file", 4) == 0) {
			io_opts->dev_type = CAMDD_DEV_FILE;
			io_opts->dev_name = FUNC2(value);
			if (io_opts->dev_name == NULL) {
				FUNC7("Error allocating memory");
				retval = 1;
				goto bailout;
			}
		} else if (FUNC3(name, "pass", 4) == 0) {
			io_opts->dev_type = CAMDD_DEV_PASS;
			io_opts->dev_name = FUNC2(value);
			if (io_opts->dev_name == NULL) {
				FUNC7("Error allocating memory");
				retval = 1;
				goto bailout;
			}
		} else if ((FUNC3(name, "bs", 2) == 0)
			|| (FUNC3(name, "blocksize", 9) == 0)) {
			retval = FUNC0(value, &io_opts->blocksize);
			if (retval == -1) {
				FUNC7("expand_number(3) failed on %s=%s", name,
				    value);
				retval = 1;
				goto bailout;
			}
		} else if (FUNC3(name, "depth", 5) == 0) {
			char *endptr;

			io_opts->queue_depth = FUNC6(value, &endptr, 0);
			if (*endptr != '\0') {
				FUNC8("invalid queue depth %s", value);
				retval = 1;
				goto bailout;
			}
		} else if (FUNC3(name, "mcs", 3) == 0) {
			char *endptr;

			io_opts->min_cmd_size = FUNC5(value, &endptr, 0);
			if ((*endptr != '\0')
			 || ((io_opts->min_cmd_size > 16)
			  || (io_opts->min_cmd_size < 0))) {
				FUNC8("invalid minimum cmd size %s", value);
				retval = 1;
				goto bailout;
			}
		} else if (FUNC3(name, "offset", 6) == 0) {
			retval = FUNC0(value, &io_opts->offset);
			if (retval == -1) {
				FUNC7("expand_number(3) failed on %s=%s", name,
				    value);
				retval = 1;
				goto bailout;
			}
		} else if (FUNC3(name, "debug", 5) == 0) {
			char *endptr;

			io_opts->debug = FUNC6(value, &endptr, 0);
			if (*endptr != '\0') {
				FUNC8("invalid debug level %s", value);
				retval = 1;
				goto bailout;
			}
		} else {
			FUNC8("Unrecognized parameter %s=%s", name, value);
		}
	}
bailout:
	FUNC1(orig_tmpstr);

	return (retval);
}