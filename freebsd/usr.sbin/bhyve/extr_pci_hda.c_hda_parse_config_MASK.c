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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static uint8_t
FUNC5(const char *opts, const char *key, char *val)
{
	char buf[64];
	char *s = buf;
	char *tmp = NULL;
	size_t len;
	int i;

	if (!opts)
		return (0);

	len = FUNC3(opts);
	if (len >= sizeof(buf)) {
		FUNC0("Opts too big\n");
		return (0);
	}

	FUNC0("opts: %s\n", opts);

	FUNC2(buf, opts);

	for (i = 0; i < len; i++)
		if (buf[i] == ',') {
			buf[i] = 0;
			tmp = buf + i + 1;
			break;
		}

	if (!FUNC1(s, key, FUNC3(key))) {
		FUNC4(val, s + FUNC3(key), 64);
		return (1);
	}

	if (!tmp)
		return (0);

	s = tmp;
	if (!FUNC1(s, key, FUNC3(key))) {
		FUNC4(val, s + FUNC3(key), 64);
		return (1);
	}

	return (0);
}