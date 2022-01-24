#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct p_times {int dummy; } ;
typedef  int /*<<< orphan*/  pidname ;
struct TYPE_5__ {double pt_pctcpu; TYPE_1__* pt_kp; } ;
struct TYPE_4__ {char* ki_comm; int /*<<< orphan*/  ki_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  compar ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char const*) ; 
 int nproc ; 
 TYPE_2__* pt ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  wnd ; 

void
FUNC9(void)
{
	int i, j, y, k;
	const char *uname, *pname;
	char pidname[30];

	if (pt == NULL)
		return;

	FUNC2(pt, nproc, sizeof (struct p_times), compar);
	y = 1;
	i = nproc;
	if (i > FUNC0(wnd)-2)
		i = FUNC0(wnd)-2;
	for (k = 0; i > 0 && pt[k].pt_pctcpu > 0.01; i--, y++, k++) {
		uname = FUNC4(pt[k].pt_kp->ki_uid, 0);
		pname = pt[k].pt_kp->ki_comm;
		FUNC8(wnd, y, 0);
		FUNC7(wnd);
		FUNC1(wnd, y, 0, uname);
		FUNC3(pidname, sizeof(pidname), "%10.10s", pname);
		FUNC1(wnd, y, 9, pidname);
		FUNC8(wnd, y, 20);
		for (j = pt[k].pt_pctcpu * 50 + 0.5; j > 0; j--)
			FUNC5(wnd, 'X');
	}
	FUNC8(wnd, y, 0); FUNC6(wnd);
}