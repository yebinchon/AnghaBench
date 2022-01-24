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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  iconv_t ;

/* Variables and functions */
 scalar_t__ cflag ; 
 scalar_t__ dflag ; 
 scalar_t__ errno ; 
 scalar_t__ fb_flags ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,char const**,size_t*,char**,size_t*) ; 
 scalar_t__ lflag ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(iconv_t cd, bool uniinput) {
	size_t inbytesleft, outbytesleft, ret;
	uint32_t outbuf;
	uint32_t inbuf;
	const char *inbuf_;
	char *outbuf_;

	for (inbuf = 0; inbuf < (lflag ? 0x100000 : 0x10000); inbuf += 1) {
		if (uniinput && (inbuf >= 0xD800) && (inbuf <= 0xDF00))
			continue;
		inbytesleft = uniinput ? 4 : FUNC3(inbuf);
		outbytesleft = 4;
		outbuf = 0x00000000;
		outbuf_ = (char *)&outbuf;
		inbuf_ = (const char *)&inbuf;
		FUNC2(cd, NULL, NULL, NULL, NULL);
		fb_flags = 0;
		errno = 0;
		ret = FUNC2(cd, &inbuf_, &inbytesleft, &outbuf_, &outbytesleft);
		if (ret == (size_t)-1) {
			if (dflag) {
				FUNC0(inbuf);
				FUNC4(" = ");
				FUNC1(errno);
				FUNC4("\n");
			}
			continue;
		}
		FUNC0(inbuf);
		FUNC4(" = ");
		FUNC0(outbuf);
		FUNC4("\n");
	}
	if (cflag)
		FUNC4("END_MAP\n");
}