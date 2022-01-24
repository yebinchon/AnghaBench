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
struct z_info {struct z_info* z_delay; struct z_info* z_pcoeff; int /*<<< orphan*/  channels; int /*<<< orphan*/  quality; void* rdst; void* rsrc; } ;
struct pcm_feeder {struct z_info* data; TYPE_1__* desc; } ;
struct TYPE_2__ {scalar_t__ in; scalar_t__ out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 void* Z_RATE_DEFAULT ; 
 int /*<<< orphan*/  feeder_rate_quality ; 
 int /*<<< orphan*/  FUNC1 (struct z_info*,int /*<<< orphan*/ ) ; 
 struct z_info* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct pcm_feeder*) ; 

__attribute__((used)) static int
FUNC4(struct pcm_feeder *f)
{
	struct z_info *info;
	int ret;

	if (f->desc->in != f->desc->out)
		return (EINVAL);

	info = FUNC2(sizeof(*info), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (info == NULL)
		return (ENOMEM);

	info->rsrc = Z_RATE_DEFAULT;
	info->rdst = Z_RATE_DEFAULT;
	info->quality = feeder_rate_quality;
	info->channels = FUNC0(f->desc->in);

	f->data = info;

	ret = FUNC3(f);
	if (ret != 0) {
		if (info->z_pcoeff != NULL)
			FUNC1(info->z_pcoeff, M_DEVBUF);
		if (info->z_delay != NULL)
			FUNC1(info->z_delay, M_DEVBUF);
		FUNC1(info, M_DEVBUF);
		f->data = NULL;
	}

	return (ret);
}