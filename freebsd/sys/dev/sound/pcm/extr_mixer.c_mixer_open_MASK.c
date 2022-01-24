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
struct snd_mixer {int busy; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct cdev {struct snd_mixer* si_drv1; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 struct snddev_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
	struct snddev_info *d;
	struct snd_mixer *m;


	if (i_dev == NULL || i_dev->si_drv1 == NULL)
		return (EBADF);

	m = i_dev->si_drv1;
	d = FUNC1(m->dev);
	if (!FUNC0(d))
		return (EBADF);

	/* XXX Need Giant magic entry ??? */

	FUNC2(m->lock);
	m->busy = 1;
	FUNC3(m->lock);

	return (0);
}