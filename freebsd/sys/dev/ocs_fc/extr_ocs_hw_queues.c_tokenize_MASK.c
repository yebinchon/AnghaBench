#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_7__ {char* string; int /*<<< orphan*/  subtype; void* type; } ;
typedef  TYPE_1__ tok_t ;
typedef  int int32_t ;
struct TYPE_8__ {char const* s; int /*<<< orphan*/  subtype; void* type; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 int TOKEN_LEN ; 
 void* TOK_NUMBER ; 
 void* TOK_NUMBER_LIST ; 
 void* TOK_NUMBER_VALUE ; 
 TYPE_3__* cmatches ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 
 scalar_t__ FUNC6 (char const) ; 
 TYPE_3__* smatches ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static const char *
FUNC8(const char *s, tok_t *tok)
{
	uint32_t i;

	FUNC3(tok, 0, sizeof(*tok));

	/* Skip over whitespace */
	while (*s && FUNC5(*s)) {
		s++;
	}

	/* Return if nothing left in this string */
	if (*s == 0) {
		return NULL;
	}

	/* Look for single character matches */
	for (i = 0; i < FUNC0(cmatches); i++) {
		if (cmatches[i].s[0] == *s) {
			tok->type = cmatches[i].type;
			tok->subtype = cmatches[i].subtype;
			tok->string[0] = *s++;
			return s;
		}
	}

	/* Scan for a hex number or decimal */
	if ((s[0] == '0') && ((s[1] == 'x') || (s[1] == 'X'))) {
		char *p = tok->string;

		tok->type = TOK_NUMBER;

		*p++ = *s++;
		*p++ = *s++;
		while ((*s == '.') || FUNC6(*s)) {
			if ((p - tok->string) < (int32_t)sizeof(tok->string)) {
				*p++ = *s;
			}
			if (*s == ',') {
				tok->type = TOK_NUMBER_LIST;
			}
			s++;
		}
		*p = 0;
		return s;
	} else if (FUNC4(*s)) {
		char *p = tok->string;

		tok->type = TOK_NUMBER;
		while ((*s == ',') || FUNC4(*s)) {
			if ((p - tok->string) < (int32_t)sizeof(tok->string)) {
				*p++ = *s;
			}
			if (*s == ',') {
				tok->type = TOK_NUMBER_LIST;
			}
			s++;
		}
		*p = 0;
		return s;
	}

	/* Scan for an ID */
	if (FUNC2(*s)) {
		char *p = tok->string;

		for (*p++ = *s++; FUNC1(*s); s++) {
			if ((p - tok->string) < TOKEN_LEN) {
				*p++ = *s;
			}
		}

		/* See if this is a $ number value */
		if (tok->string[0] == '$') {
			tok->type = TOK_NUMBER_VALUE;
		} else {
			/* Look for a string match */
			for (i = 0; i < FUNC0(smatches); i++) {
				if (FUNC7(smatches[i].s, tok->string) == 0) {
					tok->type = smatches[i].type;
					tok->subtype = smatches[i].subtype;
					return s;
				}
			}
		}
	}
	return s;
}