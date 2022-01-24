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
struct mfi_ident {int flags; int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int BUS_PROBE_LOW_PRIORITY ; 
 int ENXIO ; 
 int MFI_FLAGS_MRSAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mfi_ident* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ mfi_mrsas_enable ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct mfi_ident *id;

	if ((id = FUNC1(dev)) != NULL) {
		FUNC0(dev, id->desc);

		/* give priority to mrsas if tunable set */
		if ((id->flags & MFI_FLAGS_MRSAS) && mfi_mrsas_enable)
			return (BUS_PROBE_LOW_PRIORITY);
		else
			return (BUS_PROBE_DEFAULT);
	}
	return (ENXIO);
}