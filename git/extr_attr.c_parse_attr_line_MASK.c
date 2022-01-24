#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; int len; } ;
struct TYPE_3__ {char* pattern; int flags; int /*<<< orphan*/  nowildcardlen; int /*<<< orphan*/  patternlen; } ;
struct TYPE_4__ {TYPE_1__ pat; int /*<<< orphan*/  attr; } ;
struct match_attr {int is_macro; int num_attr; int /*<<< orphan*/ * state; TYPE_2__ u; } ;
struct attr_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTRIBUTE_MACRO_PREFIX ; 
 int PATTERN_FLAG_NEGATIVE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  blank ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct match_attr*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (char const*,int,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char**,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int,char const*,int) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct match_attr* FUNC16 (int,int) ; 

__attribute__((used)) static struct match_attr *FUNC17(const char *line, const char *src,
					  int lineno, int macro_ok)
{
	int namelen;
	int num_attr, i;
	const char *cp, *name, *states;
	struct match_attr *res = NULL;
	int is_macro;
	struct strbuf pattern = STRBUF_INIT;

	cp = line + FUNC13(line, blank);
	if (!*cp || *cp == '#')
		return NULL;
	name = cp;

	if (*cp == '"' && !FUNC14(&pattern, name, &states)) {
		name = pattern.buf;
		namelen = pattern.len;
	} else {
		namelen = FUNC11(name, blank);
		states = name + namelen;
	}

	if (FUNC12(ATTRIBUTE_MACRO_PREFIX) < namelen &&
	    FUNC9(name, ATTRIBUTE_MACRO_PREFIX)) {
		if (!macro_ok) {
			FUNC2(stderr, FUNC0("%s not allowed: %s:%d"),
				   name, src, lineno);
			goto fail_return;
		}
		is_macro = 1;
		name += FUNC12(ATTRIBUTE_MACRO_PREFIX);
		name += FUNC13(name, blank);
		namelen = FUNC11(name, blank);
		if (!FUNC1(name, namelen)) {
			FUNC8(name, namelen, src, lineno);
			goto fail_return;
		}
	}
	else
		is_macro = 0;

	states += FUNC13(states, blank);

	/* First pass to count the attr_states */
	for (cp = states, num_attr = 0; *cp; num_attr++) {
		cp = FUNC6(src, lineno, cp, NULL);
		if (!cp)
			goto fail_return;
	}

	res = FUNC16(1,
		      sizeof(*res) +
		      sizeof(struct attr_state) * num_attr +
		      (is_macro ? 0 : namelen + 1));
	if (is_macro) {
		res->u.attr = FUNC4(name, namelen);
	} else {
		char *p = (char *)&(res->state[num_attr]);
		FUNC5(p, name, namelen);
		res->u.pat.pattern = p;
		FUNC7(&res->u.pat.pattern,
				      &res->u.pat.patternlen,
				      &res->u.pat.flags,
				      &res->u.pat.nowildcardlen);
		if (res->u.pat.flags & PATTERN_FLAG_NEGATIVE) {
			FUNC15(FUNC0("Negative patterns are ignored in git attributes\n"
				  "Use '\\!' for literal leading exclamation."));
			goto fail_return;
		}
	}
	res->is_macro = is_macro;
	res->num_attr = num_attr;

	/* Second pass to fill the attr_states */
	for (cp = states, i = 0; *cp; i++) {
		cp = FUNC6(src, lineno, cp, &(res->state[i]));
	}

	FUNC10(&pattern);
	return res;

fail_return:
	FUNC10(&pattern);
	FUNC3(res);
	return NULL;
}