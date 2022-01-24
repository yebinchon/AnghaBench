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
typedef  int u_int8_t ;
struct mrsas_ident {int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 char* MRSAS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mrsas_ident* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	static u_int8_t first_ctrl = 1;
	struct mrsas_ident *id;

	if ((id = FUNC1(dev)) != NULL) {
		if (first_ctrl) {
			FUNC2("AVAGO MegaRAID SAS FreeBSD mrsas driver version: %s\n",
			    MRSAS_VERSION);
			first_ctrl = 0;
		}
		FUNC0(dev, id->desc);
		/* between BUS_PROBE_DEFAULT and BUS_PROBE_LOW_PRIORITY */
		return (-30);
	}
	return (ENXIO);
}