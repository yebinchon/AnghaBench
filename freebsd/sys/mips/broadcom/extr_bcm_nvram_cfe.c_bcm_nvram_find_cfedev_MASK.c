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
typedef  size_t u_int ;
struct bcm_nvram_iocfe {int /*<<< orphan*/  io; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_data_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int CFE_ERR_DEVNOTFOUND ; 
 int ENODEV ; 
 int FUNC1 (struct bcm_nvram_iocfe*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 size_t FUNC5 (void**) ; 
 void** nvram_cfe_devs ; 
 void** nvram_cfe_fmts ; 

int
FUNC6(struct bcm_nvram_iocfe *iocfe,
    bhnd_nvram_data_class **cls)
{
	char	*dname;
	int	 devinfo;
	int	 error, result;

	for (u_int i = 0; i < FUNC5(nvram_cfe_fmts); i++) {
		*cls = nvram_cfe_fmts[i];

		for (u_int j = 0; j < FUNC5(nvram_cfe_devs); j++) {
			dname = nvram_cfe_devs[j];

			/* Does the device exist? */
			if ((devinfo = FUNC4(dname)) < 0) {
				if (devinfo != CFE_ERR_DEVNOTFOUND) {
					FUNC0("cfe_getdevinfo(%s) failed: "
					    "%d\n", dname, devinfo);
				}

				continue;
			}

			/* Open for reading */
			if ((error = FUNC1(iocfe, dname)))
				continue;

			/* Probe */
			result = FUNC2(*cls, &iocfe->io);
			if (result <= 0) {
				/* Found a supporting NVRAM data class */
				return (0);
			}

			/* Keep searching */
			FUNC3(&iocfe->io);
		}
	}

	return (ENODEV);
}