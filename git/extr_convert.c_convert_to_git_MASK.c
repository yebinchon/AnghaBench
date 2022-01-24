#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; size_t len; } ;
struct index_state {int dummy; } ;
struct conv_attrs {int /*<<< orphan*/  ident; int /*<<< orphan*/  crlf_action; int /*<<< orphan*/  working_tree_encoding; TYPE_1__* drv; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ required; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CLEAN ; 
 int CONV_EOL_KEEP_CRLF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char const*,size_t,int,struct strbuf*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state const*,struct conv_attrs*,char const*) ; 
 int FUNC3 (struct index_state const*,char const*,char const*,size_t,struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char const*,size_t,struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*,size_t,struct strbuf*,int /*<<< orphan*/ ) ; 

int FUNC7(const struct index_state *istate,
		   const char *path, const char *src, size_t len,
		   struct strbuf *dst, int conv_flags)
{
	int ret = 0;
	struct conv_attrs ca;

	FUNC2(istate, &ca, path);

	ret |= FUNC1(path, src, len, -1, dst, ca.drv, CAP_CLEAN, NULL);
	if (!ret && ca.drv && ca.drv->required)
		FUNC4(FUNC0("%s: clean filter '%s' failed"), path, ca.drv->name);

	if (ret && dst) {
		src = dst->buf;
		len = dst->len;
	}

	ret |= FUNC5(path, src, len, dst, ca.working_tree_encoding, conv_flags);
	if (ret && dst) {
		src = dst->buf;
		len = dst->len;
	}

	if (!(conv_flags & CONV_EOL_KEEP_CRLF)) {
		ret |= FUNC3(istate, path, src, len, dst, ca.crlf_action, conv_flags);
		if (ret && dst) {
			src = dst->buf;
			len = dst->len;
		}
	}
	return ret | FUNC6(src, len, dst, ca.ident);
}