#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t sl_cur; char** sl_str; } ;
typedef  TYPE_1__ StringList ;

/* Variables and functions */
 size_t FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static const char *
FUNC2(StringList *sl, char *buf, size_t len)
{
	size_t nc, i, pos;

	buf[0] = 0;
	for (i = 1, pos = 0; i < sl->sl_cur; i++) {
		nc = FUNC0(buf + pos, sl->sl_str[i], len);
		if (nc >= len)
			goto out;
		pos += nc;
		len -= nc;
		nc = FUNC0(buf + pos, " ", len);
		if (nc >= len)
			goto out;
		pos += nc;
		len -= nc;
	}
	return buf;
out:
	FUNC1("aliases for `%s' truncated", sl->sl_str[0]);
	return buf;
}