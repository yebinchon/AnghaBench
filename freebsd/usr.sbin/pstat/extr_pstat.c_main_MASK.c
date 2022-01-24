#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t order; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {char* n_name; scalar_t__ n_value; } ;

/* Variables and functions */
 unsigned int NNAMES ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,char**,char const*) ; 
 int humanflag ; 
 int /*<<< orphan*/ * kd ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * memf ; 
 TYPE_2__* namelist ; 
 TYPE_1__* nl ; 
 void* nlistf ; 
 void* optarg ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char) ; 
 int swapflag ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int totalflag ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char* usagestr ; 
 int usenumflag ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

int
FUNC15(int argc, char *argv[])
{
	int ch, quit, ret;
	int fileflag, ttyflag;
	unsigned int i;
	char buf[_POSIX2_LINE_MAX];
	const char *opts;

	fileflag = swapflag = ttyflag = 0;

	/* We will behave like good old swapinfo if thus invoked */
	opts = FUNC10(argv[0], '/');
	if (opts)
		opts++;
	else
		opts = argv[0];
	if (!FUNC8(opts, "swapinfo")) {
		swapflag = 1;
		opts = "ghkmM:N:";
		usagestr = "swapinfo [-ghkm] [-M core [-N system]]";
	} else {
		opts = "TM:N:fghkmnst";
		usagestr = "pstat [-Tfghkmnst] [-M core [-N system]]";
	}

	while ((ch = FUNC3(argc, argv, opts)) != -1)
		switch (ch) {
		case 'f':
			fileflag = 1;
			break;
		case 'g':
			FUNC7("BLOCKSIZE", "1G", 1);
			break;
		case 'h':
			humanflag = 1;
			break;
		case 'k':
			FUNC7("BLOCKSIZE", "1K", 1);
			break;
		case 'm':
			FUNC7("BLOCKSIZE", "1M", 1);
			break;
		case 'M':
			memf = optarg;
			break;
		case 'N':
			nlistf = optarg;
			break;
		case 'n':
			usenumflag = 1;
			break;
		case 's':
			++swapflag;
			break;
		case 'T':
			totalflag = 1;
			break;
		case 't':
			ttyflag = 1;
			break;
		default:
			FUNC13();
		}

	/*
	 * Initialize symbol names list.
	 */
	for (i = 0; i < NNAMES; i++)
		nl[namelist[i].order].n_name = FUNC9(namelist[i].name);

	if (memf != NULL) {
		kd = FUNC6(nlistf, memf, NULL, O_RDONLY, buf);
		if (kd == NULL)
			FUNC0(1, "kvm_openfiles: %s", buf);
		if ((ret = FUNC5(kd, nl)) != 0) {
			if (ret == -1)
				FUNC0(1, "kvm_nlist: %s", FUNC4(kd));
			quit = 0;
			for (i = 0; nl[i].n_name[0] != '\0'; ++i)
				if (nl[i].n_value == 0) {
					quit = 1;
					FUNC14("undefined symbol: %s",
					    nl[i].n_name);
				}
			if (quit)
				FUNC1(1);
		}
	}
	if (!(fileflag | ttyflag | swapflag | totalflag))
		FUNC13();
	if (fileflag || totalflag)
		FUNC2();
	if (ttyflag)
		FUNC12();
	if (swapflag || totalflag)
		FUNC11();
	FUNC1 (0);
}