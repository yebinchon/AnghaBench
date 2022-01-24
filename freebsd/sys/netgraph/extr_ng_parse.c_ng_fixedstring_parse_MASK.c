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
typedef  int /*<<< orphan*/  u_char ;
struct ng_parse_type {struct ng_parse_fixedstring_info* info; } ;
struct ng_parse_fixedstring_info {int bufSize; } ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_NETGRAPH_PARSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,int*,int*,int*) ; 

__attribute__((used)) static int
FUNC4(const struct ng_parse_type *type,
	const char *s, int *off, const u_char *const start,
	u_char *const buf, int *buflen)
{
	const struct ng_parse_fixedstring_info *const fi = type->info;
	char *sval;
	int len;
	int slen;

	if ((sval = FUNC3(s, off, &len, &slen)) == NULL)
		return (EINVAL);
	if (slen + 1 > fi->bufSize) {
		FUNC2(sval, M_NETGRAPH_PARSE);
		return (E2BIG);
	}
	*off += len;
	FUNC0(sval, buf, slen);
	FUNC2(sval, M_NETGRAPH_PARSE);
	FUNC1(buf + slen, fi->bufSize - slen);
	*buflen = fi->bufSize;
	return (0);
}