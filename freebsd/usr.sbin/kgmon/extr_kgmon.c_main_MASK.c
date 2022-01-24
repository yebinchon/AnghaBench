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
struct kvmvars {int dummy; } ;

/* Variables and functions */
 int Bflag ; 
 int GMON_PROF_BUSY ; 
 int GMON_PROF_ERROR ; 
 int GMON_PROF_HIRES ; 
 int GMON_PROF_OFF ; 
 int GMON_PROF_ON ; 
 int O_RDWR ; 
 int bflag ; 
 int /*<<< orphan*/  FUNC0 (struct kvmvars*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 () ; 
 int FUNC4 (int,char**,char*) ; 
 int FUNC5 (struct kvmvars*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int hflag ; 
 int kflag ; 
 int FUNC7 (char const*,char*,struct kvmvars*) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int pflag ; 
 int /*<<< orphan*/  FUNC8 (struct kvmvars*) ; 
 int rflag ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kvmvars*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char **argv)
{
	int ch, mode, disp, accessmode;
	struct kvmvars kvmvars;
	const char *systemname;
	char *kmemf;

	if (FUNC9(FUNC6()) != 0) {
		FUNC1(1, "seteuid failed\n");
	}
	kmemf = NULL;
	systemname = NULL;
	while ((ch = FUNC4(argc, argv, "M:N:Bbhpr")) != -1) {
		switch((char)ch) {

		case 'M':
			kmemf = optarg;
			kflag = 1;
			break;

		case 'N':
			systemname = optarg;
			break;

		case 'B':
			Bflag = 1;
			break;

		case 'b':
			bflag = 1;
			break;

		case 'h':
			hflag = 1;
			break;

		case 'p':
			pflag = 1;
			break;

		case 'r':
			rflag = 1;
			break;

		default:
			FUNC11();
		}
	}
	argc -= optind;
	argv += optind;

#define BACKWARD_COMPATIBILITY
#ifdef	BACKWARD_COMPATIBILITY
	if (*argv) {
		systemname = *argv;
		if (*++argv) {
			kmemf = *argv;
			++kflag;
		}
	}
#endif
	if (systemname == NULL)
		systemname = FUNC3();
	accessmode = FUNC7(systemname, kmemf, &kvmvars);
	mode = FUNC5(&kvmvars);
	if (hflag)
		disp = GMON_PROF_OFF;
	else if (Bflag)
		disp = GMON_PROF_HIRES;
	else if (bflag)
		disp = GMON_PROF_ON;
	else
		disp = mode;
	if (pflag)
		FUNC0(&kvmvars);
	if (rflag)
		FUNC8(&kvmvars);
	if (accessmode == O_RDWR)
		FUNC10(&kvmvars, disp);
	(void)FUNC2(stdout, "kgmon: kernel profiling is %s.\n",
		      disp == GMON_PROF_OFF ? "off" :
		      disp == GMON_PROF_HIRES ? "running (high resolution)" :
		      disp == GMON_PROF_ON ? "running" :
		      disp == GMON_PROF_BUSY ? "busy" :
		      disp == GMON_PROF_ERROR ? "off (error)" :
		      "in an unknown state");
	return (0);
}