#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  size_t uint64_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct acpi_uhub_softc {TYPE_2__* port; scalar_t__ nports; } ;
typedef  void* device_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_6__ {int upc; int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int Valid; size_t Address; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_DEVICE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_VALID_ADR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC5 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t,int /*<<< orphan*/ ,struct sysctl_oid_list*) ; 
 int /*<<< orphan*/  FUNC7 (void*,size_t,int /*<<< orphan*/ ,struct sysctl_oid_list*) ; 
 int /*<<< orphan*/  acpi_uhub_port_sysctl ; 
 struct acpi_uhub_softc* FUNC8 (void*) ; 
 struct sysctl_ctx_list* FUNC9 (void*) ; 
 struct sysctl_oid* FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC12(ACPI_HANDLE ah, UINT32 lv, void *ctx, void **rv)
{
	ACPI_DEVICE_INFO *devinfo;
	device_t dev = ctx;
	struct acpi_uhub_softc *sc = FUNC8(dev);
	UINT32 ret;

	ret = FUNC1(ah, &devinfo);
	if (FUNC0(ret)) {
		if ((devinfo->Valid & ACPI_VALID_ADR) &&
		    (devinfo->Address > 0) &&
		    (devinfo->Address <= (uint64_t)sc->nports)) {
			char buf[] = "portXXX";
			struct sysctl_ctx_list *ctx = FUNC9(dev);
			struct sysctl_oid *oid;
			struct sysctl_oid_list *tree;
			
			FUNC11(buf, sizeof(buf), "port%ju",
			    (uintmax_t)devinfo->Address);
			oid = FUNC3(ctx,
					      FUNC5(
						      FUNC10(dev)),
					      OID_AUTO, buf, CTLFLAG_RD,
					      NULL, "port nodes");
			tree = FUNC5(oid);
			sc->port[devinfo->Address - 1].handle = ah;
			sc->port[devinfo->Address - 1].upc = 0xffffffff;
			FUNC7(dev, devinfo->Address, ah, tree);
			FUNC6(dev, devinfo->Address, ah, tree);
			FUNC4(FUNC9(dev),
					tree, OID_AUTO, "info",
					CTLTYPE_STRING | CTLFLAG_RD,
					&sc->port[devinfo->Address - 1], 0,
					acpi_uhub_port_sysctl,
					"A", "Port information");
		}
		FUNC2(devinfo);
	}
	return (AE_OK);
}