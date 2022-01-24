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
 scalar_t__ FUNC0 (char const*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  path_encoding ; 
 int precomposed_unicode ; 
 char* FUNC3 (char const*,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo_encoding ; 

void FUNC4(int argc, const char **argv)
{
	int i = 0;
	const char *oldarg;
	char *newarg;
	iconv_t ic_precompose;

	if (precomposed_unicode != 1)
		return;

	ic_precompose = FUNC2(repo_encoding, path_encoding);
	if (ic_precompose == (iconv_t) -1)
		return;

	while (i < argc) {
		size_t namelen;
		oldarg = argv[i];
		if (FUNC0(oldarg, (size_t)-1, &namelen)) {
			newarg = FUNC3(oldarg, namelen, ic_precompose, 0, NULL);
			if (newarg)
				argv[i] = newarg;
		}
		i++;
	}
	FUNC1(ic_precompose);
}