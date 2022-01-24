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
typedef  int /*<<< orphan*/  u_long ;
struct thread {int dummy; } ;
struct snddev_info {int flags; } ;
struct snd_mixer {int /*<<< orphan*/  dev; } ;
struct cdev {int /*<<< orphan*/ * si_drv1; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  MIXER_CMD_CDEV ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct snddev_info*) ; 
 int SD_F_VPC ; 
 struct snddev_info* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ mixer_bypass ; 
 int FUNC6 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct cdev *i_dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td)
{
	struct snddev_info *d;
	int ret;

	if (i_dev == NULL || i_dev->si_drv1 == NULL)
		return (EBADF);

	d = FUNC5(((struct snd_mixer *)i_dev->si_drv1)->dev);
	if (!FUNC3(d))
		return (EBADF);

	FUNC1(d);
	FUNC0(d);

	ret = -1;

	if (mixer_bypass != 0 && (d->flags & SD_F_VPC))
		ret = FUNC6(i_dev, cmd, arg, mode, td,
		    MIXER_CMD_CDEV);

	if (ret == -1)
		ret = FUNC7(i_dev, cmd, arg, mode, td,
		    MIXER_CMD_CDEV);

	FUNC4(d);
	FUNC2(d);

	return (ret);
}