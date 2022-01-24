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
struct iconv_hooks {int /*<<< orphan*/ * wc_hook; int /*<<< orphan*/  uc_hook; } ;
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 int /*<<< orphan*/  ICONV_SET_HOOKS ; 
 size_t FUNC0 (scalar_t__,char const**,size_t*,char**,size_t*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,void*) ; 
 char* FUNC4 (int) ; 
 scalar_t__ uc_hook ; 
 int /*<<< orphan*/  unicode_hook ; 

__attribute__((used)) static int
FUNC5(void)
{
	struct iconv_hooks hooks;
	iconv_t cd;
	size_t inbytesleft = 15, outbytesleft = 40;
	const char **inptr;
	const char *s = "Hello World!";
	char **outptr;
	char *outbuf;

	inptr = &s;
	hooks.uc_hook = unicode_hook;
	hooks.wc_hook = NULL;

	outbuf = FUNC4(40);
	outptr = &outbuf;

	cd = FUNC2("UTF-8", "ASCII");
	if (cd == (iconv_t)-1)
		return (-1);
	if (FUNC3(cd, ICONV_SET_HOOKS, (void *)&hooks) != 0)
		return (-1);
	if (FUNC0(cd, inptr, &inbytesleft, outptr, &outbytesleft) == (size_t)-1)
		return (-1);
	if (FUNC1(cd) == -1)
		return (-1);
	return (uc_hook ? 0 : 1);
}