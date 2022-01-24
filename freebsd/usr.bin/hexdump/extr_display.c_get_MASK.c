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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 scalar_t__ ALL ; 
 scalar_t__ DUP ; 
 scalar_t__ FIRST ; 
 int FUNC0 (int,int) ; 
 scalar_t__ WAIT ; 
 int /*<<< orphan*/ * _argv ; 
 scalar_t__ address ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int blocksize ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 scalar_t__ eaddress ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int,int,int /*<<< orphan*/ ) ; 
 int length ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 scalar_t__ odmode ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ skip ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

u_char *
FUNC11(void)
{
	static int ateof = 1;
	static u_char *curp, *savp;
	int n;
	int need, nread;
	int valid_save = 0;
	u_char *tmpp;

	if (!curp) {
		if ((curp = FUNC3(1, blocksize)) == NULL)
			FUNC4(1, NULL);
		if ((savp = FUNC3(1, blocksize)) == NULL)
			FUNC4(1, NULL);
	} else {
		tmpp = curp;
		curp = savp;
		savp = tmpp;
		address += blocksize;
		valid_save = 1;
	}
	for (need = blocksize, nread = 0;;) {
		/*
		 * if read the right number of bytes, or at EOF for one file,
		 * and no other files are available, zero-pad the rest of the
		 * block and set the end flag.
		 */
		if (!length || (ateof && !FUNC8((char **)NULL))) {
			if (odmode && address < skip)
				FUNC5(1, "cannot skip past end of input");
			if (need == blocksize)
				return((u_char *)NULL);
			/*
			 * XXX bcmp() is not quite right in the presence
			 * of multibyte characters.
			 */
			if (vflag != ALL && 
			    valid_save && 
			    FUNC1(curp, savp, nread) == 0) {
				if (vflag != DUP)
					(void)FUNC9("*\n");
				return((u_char *)NULL);
			}
			FUNC2((char *)curp + nread, need);
			eaddress = address + nread;
			return(curp);
		}
		n = FUNC7((char *)curp + nread, sizeof(u_char),
		    length == -1 ? need : FUNC0(length, need), stdin);
		if (!n) {
			if (FUNC6(stdin))
				FUNC10("%s", _argv[-1]);
			ateof = 1;
			continue;
		}
		ateof = 0;
		if (length != -1)
			length -= n;
		if (!(need -= n)) {
			/*
			 * XXX bcmp() is not quite right in the presence
			 * of multibyte characters.
			 */
			if (vflag == ALL || vflag == FIRST ||
			    valid_save == 0 ||
			    FUNC1(curp, savp, blocksize) != 0) {
				if (vflag == DUP || vflag == FIRST)
					vflag = WAIT;
				return(curp);
			}
			if (vflag == WAIT)
				(void)FUNC9("*\n");
			vflag = DUP;
			address += blocksize;
			need = blocksize;
			nread = 0;
		}
		else
			nread += n;
	}
}