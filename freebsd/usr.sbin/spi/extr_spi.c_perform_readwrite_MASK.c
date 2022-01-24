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
struct spi_options {int count; int ncmd; int /*<<< orphan*/  lsb; } ;

/* Variables and functions */
 int FUNC0 (void*,struct spi_options*) ; 
 int FUNC1 (int,void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (struct spi_options*) ; 

__attribute__((used)) static int
FUNC6(int hdev, struct spi_options *popt)
{
	int icount, err;
	void   *pr, *pw;

	pr = NULL;

	pw = FUNC5(popt);
	icount = popt->count + popt->ncmd; /* assign after fn call */

	if (!pw) {
		err = -1;
		goto the_end;
	}

	pr = FUNC4(icount + 1);

	if (!pr) {
		err = -2;
		goto the_end;
	}

	FUNC2(pr, icount);

	err = FUNC1(hdev, pw, pr, icount, popt->lsb);

	if (!err)
		err = FUNC0(pr, popt);

the_end:

	FUNC3(pr);
	FUNC3(pw);

	return err;
}