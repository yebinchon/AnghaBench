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
struct cdev_privdata {int /*<<< orphan*/  cdpd_data; int /*<<< orphan*/  (* cdpd_dtr ) (int /*<<< orphan*/ ) ;TYPE_1__* cdpd_fp; } ;
struct TYPE_2__ {struct cdev_privdata* f_cdevpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev_privdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_CDEVPDATA ; 
 int /*<<< orphan*/  cdevpriv_mtx ; 
 int /*<<< orphan*/  cdpd_list ; 
 int /*<<< orphan*/  FUNC2 (struct cdev_privdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct cdev_privdata *p)
{

	FUNC3(&cdevpriv_mtx, MA_OWNED);
	FUNC0(p->cdpd_fp->f_cdevpriv == p,
	    ("devfs_destoy_cdevpriv %p != %p", p->cdpd_fp->f_cdevpriv, p));
	p->cdpd_fp->f_cdevpriv = NULL;
	FUNC1(p, cdpd_list);
	FUNC4(&cdevpriv_mtx);
	(p->cdpd_dtr)(p->cdpd_data);
	FUNC2(p, M_CDEVPDATA);
}