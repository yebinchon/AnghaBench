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
typedef  int u_long ;
struct thread {int dummy; } ;
struct mmcsd_part {int dummy; } ;
struct mmc_ioc_multi_cmd {int num_of_cmds; scalar_t__ cmds; } ;
struct mmc_ioc_cmd {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ENOIOCTL ; 
 int FREAD ; 
#define  MMC_IOC_CMD 129 
 int MMC_IOC_MAX_CMDS ; 
#define  MMC_IOC_MULTI_CMD 128 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PRIV_DRIVER ; 
 int FUNC0 (void const*,struct mmc_ioc_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_ioc_cmd*,int /*<<< orphan*/ ) ; 
 struct mmc_ioc_cmd* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mmcsd_part*,struct mmc_ioc_cmd*,int) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mmcsd_part *part, u_long cmd, void *data, int fflag,
    struct thread *td)
{
	struct mmc_ioc_cmd *mic;
	struct mmc_ioc_multi_cmd *mimc;
	int i, err;
	u_long cnt, size;

	if ((fflag & FREAD) == 0)
		return (EBADF);

	err = FUNC4(td, PRIV_DRIVER);
	if (err != 0)
		return (err);

	err = 0;
	switch (cmd) {
	case MMC_IOC_CMD:
		mic = data;
		err = FUNC3(part, mic, fflag);
		break;
	case MMC_IOC_MULTI_CMD:
		mimc = data;
		if (mimc->num_of_cmds == 0)
			break;
		if (mimc->num_of_cmds > MMC_IOC_MAX_CMDS)
			return (EINVAL);
		cnt = mimc->num_of_cmds;
		size = sizeof(*mic) * cnt;
		mic = FUNC2(size, M_TEMP, M_WAITOK);
		err = FUNC0((const void *)mimc->cmds, mic, size);
		if (err == 0) {
			for (i = 0; i < cnt; i++) {
				err = FUNC3(part, &mic[i], fflag);
				if (err != 0)
					break;
			}
		}
		FUNC1(mic, M_TEMP);
		break;
	default:
		return (ENOIOCTL);
	}
	return (err);
}