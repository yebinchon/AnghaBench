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
struct delayed_checkout {int dummy; } ;
struct conv_attrs {TYPE_1__* drv; int /*<<< orphan*/  working_tree_encoding; int /*<<< orphan*/  crlf_action; int /*<<< orphan*/  ident; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ required; scalar_t__ process; scalar_t__ smudge; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SMUDGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char const*,size_t,int,struct strbuf*,TYPE_1__*,int /*<<< orphan*/ ,struct delayed_checkout*) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state const*,struct conv_attrs*,char const*) ; 
 int FUNC3 (char const*,size_t,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char const*,size_t,struct strbuf*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,size_t,struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const struct index_state *istate,
					    const char *path, const char *src,
					    size_t len, struct strbuf *dst,
					    int normalizing, struct delayed_checkout *dco)
{
	int ret = 0, ret_filter = 0;
	struct conv_attrs ca;

	FUNC2(istate, &ca, path);

	ret |= FUNC6(src, len, dst, ca.ident);
	if (ret) {
		src = dst->buf;
		len = dst->len;
	}
	/*
	 * CRLF conversion can be skipped if normalizing, unless there
	 * is a smudge or process filter (even if the process filter doesn't
	 * support smudge).  The filters might expect CRLFs.
	 */
	if ((ca.drv && (ca.drv->smudge || ca.drv->process)) || !normalizing) {
		ret |= FUNC3(src, len, dst, ca.crlf_action);
		if (ret) {
			src = dst->buf;
			len = dst->len;
		}
	}

	ret |= FUNC5(path, src, len, dst, ca.working_tree_encoding);
	if (ret) {
		src = dst->buf;
		len = dst->len;
	}

	ret_filter = FUNC1(
		path, src, len, -1, dst, ca.drv, CAP_SMUDGE, dco);
	if (!ret_filter && ca.drv && ca.drv->required)
		FUNC4(FUNC0("%s: smudge filter %s failed"), path, ca.drv->name);

	return ret | ret_filter;
}