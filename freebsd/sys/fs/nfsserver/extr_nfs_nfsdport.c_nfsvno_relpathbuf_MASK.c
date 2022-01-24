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
struct TYPE_2__ {int cn_flags; int /*<<< orphan*/  cn_pnbuf; } ;
struct nameidata {TYPE_1__ ni_cnd; } ;

/* Variables and functions */
 int HASBUF ; 
 int /*<<< orphan*/  namei_zone ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct nameidata *ndp)
{

	if ((ndp->ni_cnd.cn_flags & HASBUF) == 0)
		FUNC0("nfsrelpath");
	FUNC1(namei_zone, ndp->ni_cnd.cn_pnbuf);
	ndp->ni_cnd.cn_flags &= ~HASBUF;
}