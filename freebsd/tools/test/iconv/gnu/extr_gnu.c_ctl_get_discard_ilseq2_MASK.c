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
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 int /*<<< orphan*/  ICONV_GET_DISCARD_ILSEQ ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC3(void)
{
	iconv_t cd;
	int arg, ret;

	cd = FUNC1("ASCII//IGNORE", "UTF-8");
	if (cd == (iconv_t)-1)
		return (-1);
	if (FUNC2(cd, ICONV_GET_DISCARD_ILSEQ, &arg) == 0)
		ret = arg == 1 ? 0 : -1;
	else
		ret = -1;
	if (FUNC0(cd) == -1)
		return (-1);
	return (ret);
}