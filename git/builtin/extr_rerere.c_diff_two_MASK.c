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
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int ctxlen; scalar_t__ flags; } ;
typedef  TYPE_1__ xpparam_t ;
typedef  int /*<<< orphan*/  xpp ;
typedef  int /*<<< orphan*/  xecfg ;
typedef  TYPE_1__ xdemitconf_t ;
struct TYPE_13__ {int /*<<< orphan*/  out_line; int /*<<< orphan*/ * out_hunk; } ;
typedef  TYPE_3__ xdemitcb_t ;
struct TYPE_14__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ mmfile_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC5 (TYPE_4__*,TYPE_4__*,TYPE_1__*,TYPE_1__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(const char *file1, const char *label1,
		const char *file2, const char *label2)
{
	xpparam_t xpp;
	xdemitconf_t xecfg;
	xdemitcb_t ecb;
	mmfile_t minus, plus;
	int ret;

	if (FUNC4(&minus, file1) || FUNC4(&plus, file2))
		return -1;

	FUNC3("--- a/%s\n+++ b/%s\n", label1, label2);
	FUNC0(stdout);
	FUNC2(&xpp, 0, sizeof(xpp));
	xpp.flags = 0;
	FUNC2(&xecfg, 0, sizeof(xecfg));
	xecfg.ctxlen = 3;
	ecb.out_hunk = NULL;
	ecb.out_line = outf;
	ret = FUNC5(&minus, &plus, &xpp, &xecfg, &ecb);

	FUNC1(minus.ptr);
	FUNC1(plus.ptr);
	return ret;
}