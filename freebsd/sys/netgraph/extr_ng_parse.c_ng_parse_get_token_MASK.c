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
typedef  enum ng_parse_token { ____Placeholder_ng_parse_token } ng_parse_token ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_PARSE ; 
 int T_EOF ; 
 int T_EQUALS ; 
 int T_ERROR ; 
 int T_LBRACE ; 
 int T_LBRACKET ; 
 int T_RBRACE ; 
 int T_RBRACKET ; 
 int T_STRING ; 
 int T_WORD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const) ; 
 char* FUNC2 (char const*,int*,int*,int /*<<< orphan*/ *) ; 

enum ng_parse_token
FUNC3(const char *s, int *startp, int *lenp)
{
	char *t;
	int i;

	while (FUNC1(s[*startp]))
		(*startp)++;
	switch (s[*startp]) {
	case '\0':
		*lenp = 0;
		return T_EOF;
	case '{':
		*lenp = 1;
		return T_LBRACE;
	case '}':
		*lenp = 1;
		return T_RBRACE;
	case '[':
		*lenp = 1;
		return T_LBRACKET;
	case ']':
		*lenp = 1;
		return T_RBRACKET;
	case '=':
		*lenp = 1;
		return T_EQUALS;
	case '"':
		if ((t = FUNC2(s, startp, lenp, NULL)) == NULL)
			return T_ERROR;
		FUNC0(t, M_NETGRAPH_PARSE);
		return T_STRING;
	default:
		for (i = *startp + 1; s[i] != '\0' && !FUNC1(s[i])
		    && s[i] != '{' && s[i] != '}' && s[i] != '['
		    && s[i] != ']' && s[i] != '=' && s[i] != '"'; i++)
			;
		*lenp = i - *startp;
		return T_WORD;
	}
}