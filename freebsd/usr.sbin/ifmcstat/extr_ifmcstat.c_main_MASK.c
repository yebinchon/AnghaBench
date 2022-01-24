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

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_LINK ; 
 int /*<<< orphan*/  EX_NOHOST ; 
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 scalar_t__ Kflag ; 
 scalar_t__ af ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ifindex ; 
 int FUNC4 () ; 
 int FUNC5 (char const*,char const*) ; 
 char* optarg ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ vflag ; 

int
FUNC9(int argc, char **argv)
{
	int c, error;
#ifdef WITH_KVM
	const char *kernel = NULL;
	const char *core = NULL;
#endif

	while ((c = FUNC2(argc, argv, options)) != -1) {
		switch (c) {
		case 'i':
			if ((ifindex = FUNC3(optarg)) == 0) {
				FUNC1(stderr, "%s: unknown interface\n",
				    optarg);
				FUNC0(EX_NOHOST);
			}
			break;

		case 'f':
#ifdef INET
			if (strcmp(optarg, "inet") == 0) {
				af = AF_INET;
				break;
			}
#endif
#ifdef INET6
			if (strcmp(optarg, "inet6") == 0) {
				af = AF_INET6;
				break;
			}
#endif
			if (FUNC6(optarg, "link") == 0) {
				af = AF_LINK;
				break;
			}
			FUNC1(stderr, "%s: unknown address family\n", optarg);
			FUNC0(EX_USAGE);
			/*NOTREACHED*/
			break;

#ifdef WITH_KVM
		case 'K':
			++Kflag;
			break;
#endif

		case 'v':
			++vflag;
			break;

#ifdef WITH_KVM
		case 'M':
			core = strdup(optarg);
			break;

		case 'N':
			kernel = strdup(optarg);
			break;
#endif

		default:
			FUNC8();
			break;
			/*NOTREACHED*/
		}
	}

	if (af == AF_LINK && vflag)
		FUNC8();

#ifdef WITH_KVM
	if (Kflag)
		error = ifmcstat_kvm(kernel, core);
	/*
	 * If KVM failed, and user did not explicitly specify a core file,
	 * or force KVM backend to be disabled, try the sysctl backend.
	 */
	if (!Kflag || (error != 0 && (core == NULL && kernel == NULL)))
#endif
	error = FUNC4();
	if (error != 0)
		FUNC0(EX_OSERR);

	FUNC0(EX_OK);
	/*NOTREACHED*/
}