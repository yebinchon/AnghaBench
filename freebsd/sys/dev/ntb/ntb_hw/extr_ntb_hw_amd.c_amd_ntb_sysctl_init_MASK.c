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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct amd_ntb_softc {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct amd_ntb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amd_ntb_hw_info_handler ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct amd_ntb_softc *ntb)
{
	struct sysctl_oid_list *globals;
	struct sysctl_ctx_list *ctx;

	ctx = FUNC2(ntb->device);
	globals = FUNC1(FUNC3(ntb->device));

	FUNC0(ctx, globals, OID_AUTO, "info",
	    CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, ntb, 0,
	    amd_ntb_hw_info_handler, "A", "AMD NTB HW Information");
}