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
typedef  int /*<<< orphan*/  u_char ;
struct msdosfsmount {int pm_flags; int /*<<< orphan*/  pm_u2w; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* conv ) (int /*<<< orphan*/ ,char const**,size_t*,char**,size_t*) ;} ;

/* Variables and functions */
 int MSDOSFSMNT_KICONV ; 
 int /*<<< orphan*/  WIN_CHARS ; 
 int WIN_MAXLEN ; 
 int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* msdosfs_iconv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const**,size_t*,char**,size_t*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*,size_t) ; 

int
FUNC3(const u_char *un, size_t unlen, struct msdosfsmount *pmp)
{
	size_t wlen;
	char wn[WIN_MAXLEN * 2 + 1], *wnp;

	unlen = FUNC2(un, unlen);

	if (pmp->pm_flags & MSDOSFSMNT_KICONV && msdosfs_iconv) {
		wlen = WIN_MAXLEN * 2;
		wnp = wn;
		msdosfs_iconv->conv(pmp->pm_u2w, (const char **)&un, &unlen, &wnp, &wlen);
		if (unlen > 0)
			return 0;
		return FUNC0(WIN_MAXLEN - wlen/2, WIN_CHARS);
	}

	if (unlen > WIN_MAXLEN)
		return 0;
	return FUNC0(unlen, WIN_CHARS);
}