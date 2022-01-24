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
typedef  int uint32_t ;
struct statsblobv1 {scalar_t__ abi; int /*<<< orphan*/  tplhash; } ;
struct sbuf {int dummy; } ;
struct sb_tostrcb_ctx {int fmt; int flags; int /*<<< orphan*/ * tpl; struct sbuf* buf; } ;
typedef  enum sb_str_fmt { ____Placeholder_sb_str_fmt } sb_str_fmt ;

/* Variables and functions */
 int EINVAL ; 
 int SB_IT_NULLVOI ; 
 int SB_IT_NULLVOISTAT ; 
 int SB_STRFMT_NUM_FMTS ; 
 int SB_TOSTR_META ; 
 int SB_TOSTR_OBJDUMP ; 
 scalar_t__ STATS_ABI_V1 ; 
 int FUNC0 (struct sbuf*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct statsblobv1*,int /*<<< orphan*/ ,struct sb_tostrcb_ctx*,int) ; 
 int /*<<< orphan*/  stats_v1_itercb_tostr ; 

int
FUNC4(struct statsblobv1 *sb, struct sbuf *buf,
    enum sb_str_fmt fmt, uint32_t flags)
{
	struct sb_tostrcb_ctx sctx;
	uint32_t iflags;

	if (sb == NULL || sb->abi != STATS_ABI_V1 || buf == NULL ||
	    fmt >= SB_STRFMT_NUM_FMTS)
		return (EINVAL);

	sctx.buf = buf;
	sctx.fmt = fmt;
	sctx.flags = flags;

	if (flags & SB_TOSTR_META) {
		if (FUNC1(FUNC2(NULL, sb->tplhash),
		    &sctx.tpl))
			return (EINVAL);
	} else
		sctx.tpl = NULL;

	iflags = 0;
	if (flags & SB_TOSTR_OBJDUMP)
		iflags |= (SB_IT_NULLVOI | SB_IT_NULLVOISTAT);
	FUNC3(sb, stats_v1_itercb_tostr, &sctx, iflags);

	return (FUNC0(buf));
}