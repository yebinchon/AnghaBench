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
typedef  int u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct ng_parse_type {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NETGRAPH_PARSE ; 
 int /*<<< orphan*/  FUNC0 (char* const,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const* const,int const) ; 
 int FUNC2 (char**,int*,char*,char* const) ; 

__attribute__((used)) static int
FUNC3(const struct ng_parse_type *type,
	const u_char *data, int *off, char *cbuf, int cbuflen)
{
	const char *const raw = (const char *)data + *off + 2;
	const int slen = *((const u_int16_t *)(data + *off));
	char *const s = FUNC1(raw, slen);
	int error;

	if (s == NULL)
		return (ENOMEM);
	if ((error = FUNC2(&cbuf, &cbuflen, "%s", s)) != 0) {
		FUNC0(s, M_NETGRAPH_PARSE);
		return (error);
	}
	FUNC0(s, M_NETGRAPH_PARSE);
	*off += slen + 2;
	return (0);
}