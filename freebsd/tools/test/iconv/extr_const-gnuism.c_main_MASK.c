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
typedef  int /*<<< orphan*/  iconv_t ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const**,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (size_t) ; 
 size_t FUNC4 (char*) ; 

int
FUNC5(void)
{
	iconv_t cd;
	size_t inbytes, outbytes;
	char *str1 = "FOOBAR";
	const char *str2 = "FOOBAR";
	char ** in1;
	const char ** in2 = &str2;
	char *out1, *out2;

	inbytes = outbytes = FUNC4("FOOBAR");

	if ((cd = FUNC2("UTF-8", "ASCII")) == (iconv_t)-1)
		FUNC0(1, NULL);

	if ((out2 = FUNC3(inbytes)) == NULL)
		FUNC0(1, NULL);

	if (FUNC1(cd, in2, &inbytes, &out2, &outbytes) == -1)
		FUNC0(1, NULL);

	in1 = &str1;
	inbytes = outbytes = FUNC4("FOOBAR");

	if ((out1 = FUNC3(inbytes)) == NULL)
		FUNC0(1, NULL);

	if (FUNC1(cd, in1, &inbytes, &out1, &outbytes) == -1)
		FUNC0(1, NULL);

	return (EXIT_SUCCESS);

}