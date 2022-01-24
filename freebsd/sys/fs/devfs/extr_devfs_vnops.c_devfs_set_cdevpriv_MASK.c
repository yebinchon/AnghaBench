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
struct file {struct cdev_privdata* f_cdevpriv; scalar_t__ f_data; } ;
struct cdev_privdata {struct file* cdpd_fp; int /*<<< orphan*/ * cdpd_dtr; void* cdpd_data; } ;
struct cdev_priv {int /*<<< orphan*/  cdp_fdpriv; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  d_priv_dtor_t ;
struct TYPE_2__ {struct file* td_fpop; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cdev_privdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_CDEVPDATA ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct cdev_priv* FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  cdevpriv_mtx ; 
 int /*<<< orphan*/  cdpd_list ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (struct cdev_privdata*,int /*<<< orphan*/ ) ; 
 struct cdev_privdata* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(void *priv, d_priv_dtor_t *priv_dtr)
{
	struct file *fp;
	struct cdev_priv *cdp;
	struct cdev_privdata *p;
	int error;

	fp = curthread->td_fpop;
	if (fp == NULL)
		return (ENOENT);
	cdp = FUNC1((struct cdev *)fp->f_data);
	p = FUNC3(sizeof(struct cdev_privdata), M_CDEVPDATA, M_WAITOK);
	p->cdpd_data = priv;
	p->cdpd_dtr = priv_dtr;
	p->cdpd_fp = fp;
	FUNC4(&cdevpriv_mtx);
	if (fp->f_cdevpriv == NULL) {
		FUNC0(&cdp->cdp_fdpriv, p, cdpd_list);
		fp->f_cdevpriv = p;
		FUNC5(&cdevpriv_mtx);
		error = 0;
	} else {
		FUNC5(&cdevpriv_mtx);
		FUNC2(p, M_CDEVPDATA);
		error = EBUSY;
	}
	return (error);
}