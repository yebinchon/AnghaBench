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
struct poly1305_kat {int /*<<< orphan*/  vector_name; } ;
typedef  int /*<<< orphan*/  hbyte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,char*,char*) ; 
 size_t FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char*) ; 

__attribute__((used)) static void
FUNC7(const struct poly1305_kat *kat, const char *hexstr, void *voutput,
    size_t explen)
{
	/* Space or colon delimited; may contain a single trailing space;
	 * length should match exactly.
	 */
	const char *sep, *it;
	size_t sym_len, count;
	char hbyte[3], *out;
	int res;

	out = voutput;
	FUNC3(hbyte, 0, sizeof(hbyte));

	it = hexstr;
	count = 0;
	while (true) {
		sep = FUNC6(it, " :");
		if (sep == NULL)
			sym_len = FUNC5(it);
		else
			sym_len = sep - it;

		FUNC0(sym_len, 2,
		    "invalid hex byte '%.*s' in vector %s", (int)sym_len, it,
		    kat->vector_name);

		FUNC2(hbyte, it, 2);
		res = FUNC4(hbyte, "%hhx", &out[count]);
		FUNC0(res, 1,
		    "invalid hex byte '%s' in vector %s", hbyte,
		    kat->vector_name);

		count++;
		FUNC1(count <= explen,
		    "got longer than expected value at %s", kat->vector_name);

		if (sep == NULL)
			break;
		it = sep;
		while (*it == ' ' || *it == ':')
			it++;
		if (*it == 0)
			break;
	}

	FUNC0(count, explen, "got short value at %s",
	    kat->vector_name);
}