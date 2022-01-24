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
typedef  int /*<<< orphan*/  uint64_t ;
struct camdd_io_opts {scalar_t__ dev_type; } ;
typedef  int /*<<< orphan*/  camdd_argmask ;

/* Variables and functions */
 int /*<<< orphan*/  CAMDD_ARG_ERR_RECOVER ; 
 int /*<<< orphan*/  CAMDD_ARG_NONE ; 
 int /*<<< orphan*/  CAMDD_ARG_RETRIES ; 
 int /*<<< orphan*/  CAMDD_ARG_TIMEOUT ; 
 int /*<<< orphan*/  CAMDD_ARG_VERBOSE ; 
 scalar_t__ CAMDD_DEV_NONE ; 
 int CAMDD_PASS_RW_TIMEOUT ; 
 struct camdd_io_opts* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct camdd_io_opts*) ; 
 int FUNC2 (struct camdd_io_opts*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct camdd_io_opts*) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

int
FUNC11(int argc, char **argv)
{
	int c;
	camdd_argmask arglist = CAMDD_ARG_NONE;
	int timeout = 0, retry_count = 1;
	int error = 0;
	uint64_t max_io = 0;
	struct camdd_io_opts *opt_list = NULL;

	if (argc == 1) {
		FUNC9();
		FUNC4(1);
	}

	opt_list = FUNC0(2, sizeof(struct camdd_io_opts));
	if (opt_list == NULL) {
		FUNC10("Unable to allocate option list");
		error = 1;
		goto bailout;
	}

	while ((c = FUNC7(argc, argv, "C:Ehi:m:o:t:v")) != -1){
		switch (c) {
		case 'C':
			retry_count = FUNC8(optarg, NULL, 0);
			if (retry_count < 0)
				FUNC3(1, "retry count %d is < 0",
				     retry_count);
			arglist |= CAMDD_ARG_RETRIES;
			break;
		case 'E':
			arglist |= CAMDD_ARG_ERR_RECOVER;
			break;
		case 'i':
		case 'o':
			if (((c == 'i')
			  && (opt_list[0].dev_type != CAMDD_DEV_NONE))
			 || ((c == 'o')
			  && (opt_list[1].dev_type != CAMDD_DEV_NONE))) {
				FUNC3(1, "Only one input and output path "
				    "allowed");
			}
			error = FUNC1(optarg, (c == 'o') ? 1 : 0,
			    (c == 'o') ? &opt_list[1] : &opt_list[0]);
			if (error != 0)
				goto bailout;
			break;
		case 'm':
			error = FUNC5(optarg, &max_io);
			if (error == -1) {
				FUNC10("invalid maximum I/O amount %s", optarg);
				error = 1;
				goto bailout;
			}
			break;
		case 't':
			timeout = FUNC8(optarg, NULL, 0);
			if (timeout < 0)
				FUNC3(1, "invalid timeout %d", timeout);
			/* Convert the timeout from seconds to ms */
			timeout *= 1000;
			arglist |= CAMDD_ARG_TIMEOUT;
			break;
		case 'v':
			arglist |= CAMDD_ARG_VERBOSE;
			break;
		case 'h':
		default:
			FUNC9();
			FUNC4(1);
			break; /*NOTREACHED*/
		}
	}

	if ((opt_list[0].dev_type == CAMDD_DEV_NONE)
	 || (opt_list[1].dev_type == CAMDD_DEV_NONE))
		FUNC3(1, "Must specify both -i and -o");

	/*
	 * Set the timeout if the user hasn't specified one.
	 */
	if (timeout == 0)
		timeout = CAMDD_PASS_RW_TIMEOUT;

	error = FUNC2(opt_list, 2, max_io, retry_count, timeout);

bailout:
	FUNC6(opt_list);

	FUNC4(error);
}