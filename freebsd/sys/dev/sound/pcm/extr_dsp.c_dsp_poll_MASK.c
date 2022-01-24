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
struct thread {int dummy; } ;
struct snddev_info {int dummy; } ;
struct pcm_channel {int flags; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int CHN_F_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*,struct cdev*) ; 
 int EBADF ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int SD_F_PRIO_RD ; 
 int SD_F_PRIO_WR ; 
 int FUNC3 (struct pcm_channel*,int,struct thread*) ; 
 struct snddev_info* FUNC4 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct cdev*,struct pcm_channel**,struct pcm_channel**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*,struct pcm_channel*,struct pcm_channel*,int) ; 

__attribute__((used)) static int
FUNC7(struct cdev *i_dev, int events, struct thread *td)
{
	struct snddev_info *d;
	struct pcm_channel *wrch, *rdch;
	int ret, e;

	d = FUNC4(i_dev);
	if (!FUNC0(d, i_dev))
		return (EBADF);

	FUNC1(d);

	wrch = NULL;
	rdch = NULL;
	ret = 0;

	FUNC5(i_dev, &rdch, &wrch, SD_F_PRIO_RD | SD_F_PRIO_WR);

	if (wrch != NULL && !(wrch->flags & CHN_F_DEAD)) {
		e = (events & (POLLOUT | POLLWRNORM));
		if (e)
			ret |= FUNC3(wrch, e, td);
	}

	if (rdch != NULL && !(rdch->flags & CHN_F_DEAD)) {
		e = (events & (POLLIN | POLLRDNORM));
		if (e)
			ret |= FUNC3(rdch, e, td);
	}

	FUNC6(i_dev, rdch, wrch, SD_F_PRIO_RD | SD_F_PRIO_WR);

	FUNC2(d);

	return (ret);
}