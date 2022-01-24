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
typedef  int u_int ;

/* Variables and functions */
 int BFLAG ; 
 int IFLAG ; 
 int KFLAG ; 
 int MFLAG ; 
 int NFLAG ; 
 int PFLAG ; 
 int RFLAG ; 
 int SFLAG ; 
 int UFLAG ; 
 int VFLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char *argv[])
{
	u_int flags;
	int ch;

	FUNC3();
	flags = 0;

	while ((ch = FUNC1(argc, argv, "abiKmnoprsUv")) != -1)
		switch(ch) {
		case 'a':
			flags |= (MFLAG | NFLAG | RFLAG | SFLAG | VFLAG);
			break;
		case 'b':
			flags |= BFLAG;
			break;
		case 'i':
			flags |= IFLAG;
			break;
		case 'K':
			flags |= KFLAG;
			break;
		case 'm':
			flags |= MFLAG;
			break;
		case 'n':
			flags |= NFLAG;
			break;
		case 'p':
			flags |= PFLAG;
			break;
		case 'r':
			flags |= RFLAG;
			break;
		case 's':
		case 'o':
			flags |= SFLAG;
			break;
		case 'U':
			flags |= UFLAG;
			break;
		case 'v':
			flags |= VFLAG;
			break;
		case '?':
		default:
			FUNC4();
		}

	argc -= optind;
	argv += optind;

	if (argc)
		FUNC4();

	if (!flags)
		flags |= SFLAG;

	FUNC2(flags);
	FUNC0(0);
}