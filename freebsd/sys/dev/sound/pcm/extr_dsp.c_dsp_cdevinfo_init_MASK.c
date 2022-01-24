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
 int DSP_CDEVINFO_CACHESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dsp_cdevinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct dsp_cdevinfo* FUNC5 (int,int /*<<< orphan*/ ,int) ; 

void
FUNC6(struct snddev_info *d)
{
	struct dsp_cdevinfo *cdi;
	int i;

	FUNC0(d != NULL, ("NULL snddev_info"));
	FUNC1(d);
	FUNC2(d);

	FUNC3(&d->dsp_cdevinfo_pool);
	for (i = 0; i < DSP_CDEVINFO_CACHESIZE; i++) {
		cdi = FUNC5(sizeof(*cdi), M_DEVBUF, M_WAITOK | M_ZERO);
		FUNC4(&d->dsp_cdevinfo_pool, cdi, link);
	}
}