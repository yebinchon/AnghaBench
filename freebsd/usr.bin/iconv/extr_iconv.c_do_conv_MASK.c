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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ E2BIG ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  ICONV_SET_DISCARD_ILSEQ ; 
 int INBUFSIZE ; 
 int OUTBUFSIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ,char**,size_t*,char**,size_t*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long long) ; 

__attribute__((used)) static int
FUNC11(FILE *fp, iconv_t cd, bool silent, bool hide_invalid)
{
	char inbuf[INBUFSIZE], outbuf[OUTBUFSIZE], *in, *out;
	unsigned long long invalids;
	size_t inbytes, outbytes, ret;

	int arg = (int)hide_invalid;
	if (FUNC8(cd, ICONV_SET_DISCARD_ILSEQ, (void *)&arg) == -1)
		FUNC1(EXIT_FAILURE, "iconvctl(DISCARD_ILSEQ, %d)", arg);

	invalids = 0;
	while ((inbytes = FUNC5(inbuf, 1, INBUFSIZE, fp)) > 0) {
		in = inbuf;
		while (inbytes > 0) {
			size_t inval;

			out = outbuf;
			outbytes = OUTBUFSIZE;
			ret = FUNC0(cd, &in, &inbytes, &out, &outbytes,
			    0, &inval);
			invalids += inval;
			if (outbytes < OUTBUFSIZE)
				(void)FUNC6(outbuf, 1, OUTBUFSIZE - outbytes,
				    stdout);
			if (ret == (size_t)-1 && errno != E2BIG) {
				if (errno != EINVAL || in == inbuf)
					FUNC1(EXIT_FAILURE, "iconv()");

				/* incomplete input character */
				(void)FUNC9(inbuf, in, inbytes);
				ret = FUNC5(inbuf + inbytes, 1,
				    INBUFSIZE - inbytes, fp);
				if (ret == 0) {
					FUNC4(stdout);
					if (FUNC3(fp))
						FUNC2(EXIT_FAILURE,
						    "unexpected end of file; "
						    "the last character is "
						    "incomplete.");
					else
						FUNC1(EXIT_FAILURE, "fread()");
				}
				in = inbuf;
				inbytes += ret;
			}
		}
	}
	/* reset the shift state of the output buffer */
	outbytes = OUTBUFSIZE;
	out = outbuf;
	ret = FUNC7(cd, NULL, NULL, &out, &outbytes);
	if (ret == (size_t)-1)
		FUNC1(EXIT_FAILURE, "iconv()");
	if (outbytes < OUTBUFSIZE)
		(void)FUNC6(outbuf, 1, OUTBUFSIZE - outbytes, stdout);

	if (invalids > 0 && !silent)
		FUNC10("warning: invalid characters: %llu", invalids);

	return (invalids > 0);
}