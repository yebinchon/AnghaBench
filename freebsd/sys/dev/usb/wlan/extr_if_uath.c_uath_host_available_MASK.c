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
struct uath_softc {int dummy; } ;
struct uath_cmd_host_available {void* sw_ver_build; void* sw_ver_patch; void* sw_ver_minor; void* sw_ver_major; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_SW_VER_BUILD ; 
 int /*<<< orphan*/  ATH_SW_VER_MAJOR ; 
 int /*<<< orphan*/  ATH_SW_VER_MINOR ; 
 int /*<<< orphan*/  ATH_SW_VER_PATCH ; 
 int /*<<< orphan*/  FUNC0 (struct uath_softc*) ; 
 int /*<<< orphan*/  WDCMSG_HOST_AVAILABLE ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uath_softc*,int /*<<< orphan*/ ,struct uath_cmd_host_available*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct uath_softc *sc)
{
	struct uath_cmd_host_available setup;

	FUNC0(sc);

	/* inform target the host is available */
	setup.sw_ver_major = FUNC1(ATH_SW_VER_MAJOR);
	setup.sw_ver_minor = FUNC1(ATH_SW_VER_MINOR);
	setup.sw_ver_patch = FUNC1(ATH_SW_VER_PATCH);
	setup.sw_ver_build = FUNC1(ATH_SW_VER_BUILD);
	return FUNC2(sc, WDCMSG_HOST_AVAILABLE,
		&setup, sizeof setup, NULL, 0, 0);
}