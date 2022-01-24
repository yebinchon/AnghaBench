#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ flags; } ;
typedef  TYPE_1__ xpparam_t ;
typedef  int /*<<< orphan*/  xecfg ;
struct TYPE_12__ {int ctxlen; } ;
typedef  TYPE_2__ xdemitconf_t ;
struct TYPE_13__ {int /*<<< orphan*/ * priv; int /*<<< orphan*/  out_line; int /*<<< orphan*/ * out_hunk; } ;
typedef  TYPE_3__ xdemitcb_t ;
struct merge_list {int dummy; } ;
struct TYPE_14__ {unsigned long size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ mmfile_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct merge_list*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct merge_list*,unsigned long*) ; 
 int /*<<< orphan*/  show_outf ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_4__*,TYPE_1__*,TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(struct merge_list *entry)
{
	unsigned long size;
	mmfile_t src, dst;
	xpparam_t xpp;
	xdemitconf_t xecfg;
	xdemitcb_t ecb;

	xpp.flags = 0;
	FUNC2(&xecfg, 0, sizeof(xecfg));
	xecfg.ctxlen = 3;
	ecb.out_hunk = NULL;
	ecb.out_line = show_outf;
	ecb.priv = NULL;

	src.ptr = FUNC3(entry, &size);
	if (!src.ptr)
		size = 0;
	src.size = size;
	dst.ptr = FUNC4(entry, &size);
	if (!dst.ptr)
		size = 0;
	dst.size = size;
	if (FUNC5(&src, &dst, &xpp, &xecfg, &ecb))
		FUNC0("unable to generate diff");
	FUNC1(src.ptr);
	FUNC1(dst.ptr);
}