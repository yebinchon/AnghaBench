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
struct spi_options {int /*<<< orphan*/  lsb; scalar_t__ ncmd; scalar_t__ count; } ;

/* Variables and functions */
 int FUNC0 (int,void*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (struct spi_options*) ; 

__attribute__((used)) static int
FUNC3(int hdev, struct spi_options *popt)
{
	int err;
	void   *pw;

	/* read data from cmd buf and stdin and write to 'write' buffer */

	pw = FUNC2(popt);

	if (!pw) {
		err = -1;
		goto the_end;
	}

	err = FUNC0(hdev, pw, NULL, popt->count + popt->ncmd, popt->lsb);

the_end:

	FUNC1(pw);

	return err;
}