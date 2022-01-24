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
struct sbuf {int dummy; } ;

/* Variables and functions */
 void* EINVAL ; 
 void* ENOMEM ; 
 char* FUNC0 (int,int) ; 
 void* errno ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 char const* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*) ; 
 struct sbuf* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct sbuf*,char const) ; 
 char* FUNC14 (char const*,char) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 
 size_t FUNC17 (char const*) ; 

__attribute__((used)) static char *
FUNC18(const char *spec, int *istemp)
{
	struct sbuf *sb;
	char *res, *var = NULL;
	const char *base, *p, *v;
	size_t len;
	int c, error, quoted, subst;

	len = FUNC17(spec);
	if (len == 0) {
		errno = EINVAL;
		return (NULL);
	}

	c = (len > 1) ? (spec[0] == spec[len - 1]) ? spec[0] : 0 : 0;
	*istemp = (c == '`') ? 1 : 0;
	subst = (c == '`' || c == '"') ? 1 : 0;
	quoted = (subst || c == '\'') ? 1 : 0;

	if (!subst) {
		res = FUNC1(spec + quoted);
		if (quoted)
			res[len - 2] = '\0';
		return (res);
	}

	sb = FUNC12();
	if (sb == NULL) {
		errno = ENOMEM;
		return (NULL);
	}

	base = spec + 1;
	len -= 2;
	error = 0;
	while (len > 0) {
		p = FUNC14(base, '$');
		if (p == NULL) {
			FUNC7(sb, base, len);
			base += len;
			len = 0;
			continue;
		}
		/* The following is safe. spec always starts with a quote. */
		if (p[-1] == '\\')
			p--;
		if (base != p) {
			FUNC7(sb, base, p - base);
			len -= p - base;
			base = p;
		}
		if (*p == '\\') {
			FUNC13(sb, '$');
			base += 2;
			len -= 2;
			continue;
		}
		/* Skip the '$'. */
		base++;
		len--;
		/* Handle ${X} vs $X. */
		v = base;
		if (*base == '{') {
			p = FUNC14(v, '}');
			if (p == NULL)
				p = v;
		} else
			p = v;
		len -= (p + 1) - base;
		base = p + 1;

		if (v == p) {
			FUNC13(sb, *v);
			continue;
		}

		error = ENOMEM;
		var = FUNC0(p - v, 1);
		FUNC6(var, v + 1, p - v - 1);
		if (FUNC15(var, ".CURDIR") == 0) {
			res = FUNC3(NULL, 0);
			if (res == NULL)
				break;
		} else if (FUNC15(var, ".PROG") == 0) {
			res = FUNC1(FUNC5());
		} else {
			v = FUNC4(var);
			if (v != NULL) {
				res = FUNC1(v);
			} else
				res = NULL;
		}
		error = 0;

		if (res != NULL) {
			FUNC8(sb, res);
			FUNC2(res);
		}
		FUNC2(var);
		var = NULL;
	}

	FUNC2(var);
	FUNC11(sb);
	res = (error == 0) ? FUNC16(FUNC9(sb)) : NULL;
	FUNC10(sb);
	if (res == NULL)
		errno = ENOMEM;
	return (res);
}