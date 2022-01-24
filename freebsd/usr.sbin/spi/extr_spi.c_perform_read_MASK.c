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
struct spi_options {int count; int ncmd; int /*<<< orphan*/  lsb; int /*<<< orphan*/  pcmd; } ;

/* Variables and functions */
 int FUNC0 (void*,struct spi_options*) ; 
 int FUNC1 (int,void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(int hdev, struct spi_options *popt)
{
	int icount, err;
	void   *pr, *pw;

	pr = NULL;
	icount = popt->count + popt->ncmd;

	/* prep write buffer filled with 0 bytes */
	pw = FUNC4(icount);

	if (!pw) {
		err = -1;
		goto the_end;
	}

	FUNC2(pw, icount);

	/* if I included a command sequence, copy bytes to the write buf */
	if (popt->pcmd && popt->ncmd > 0)
		FUNC5(pw, popt->pcmd, popt->ncmd);

	pr = FUNC4(icount + 1);

	if (!pr) {
		err = -2;
		goto the_end;
	}

	FUNC2(pr, icount);

	err = FUNC1(hdev, pw, pr, icount, popt->lsb);

	if (!err && popt->count > 0)
		err = FUNC0(pr, popt);

the_end:

	FUNC3(pr);
	FUNC3(pw);

	return err;
}