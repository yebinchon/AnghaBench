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
struct snddev_info {int /*<<< orphan*/  dsp_cdevinfo_pool; } ;
struct dsp_cdevinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*) ; 
 struct dsp_cdevinfo* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dsp_cdevinfo* FUNC5 (struct dsp_cdevinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dsp_cdevinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

void
FUNC7(struct snddev_info *d)
{
	struct dsp_cdevinfo *cdi, *tmp;

	FUNC0(d != NULL, ("NULL snddev_info"));
	FUNC1(d);
	FUNC2(d);

	cdi = FUNC3(&d->dsp_cdevinfo_pool);
	while (cdi != NULL) {
		tmp = FUNC5(cdi, link);
		FUNC6(cdi, M_DEVBUF);
		cdi = tmp;
	}
	FUNC4(&d->dsp_cdevinfo_pool);
}