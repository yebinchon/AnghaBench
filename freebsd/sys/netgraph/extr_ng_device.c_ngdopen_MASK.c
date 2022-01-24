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
struct thread {int dummy; } ;
struct cdev {int /*<<< orphan*/  si_drv1; } ;
typedef  TYPE_1__* priv_p ;
struct TYPE_2__ {int /*<<< orphan*/  ngd_mtx; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG ; 
 int /*<<< orphan*/  NGDF_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct cdev *dev, int flag, int mode, struct thread *td)
{
	priv_p	priv = (priv_p )dev->si_drv1;

	DBG;

	FUNC0(&priv->ngd_mtx);
	priv->flags |= NGDF_OPEN;
	FUNC1(&priv->ngd_mtx);

	return(0);
}