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
struct TYPE_5__ {scalar_t__ fw_ver_major; scalar_t__ fw_ver_minor; int /*<<< orphan*/  dev; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  fw_ver_tiny; } ;
typedef  TYPE_1__ mxge_softc_t ;
struct TYPE_6__ {int /*<<< orphan*/  version; int /*<<< orphan*/  mcp_type; } ;
typedef  TYPE_2__ mcp_gen_header_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ MCP_TYPE_ETH ; 
 scalar_t__ MXGEFW_VERSION_MAJOR ; 
 scalar_t__ MXGEFW_VERSION_MINOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 scalar_t__ mxge_verbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(mxge_softc_t *sc, const mcp_gen_header_t *hdr)
{


	if (FUNC0(hdr->mcp_type) != MCP_TYPE_ETH) {
		FUNC1(sc->dev, "Bad firmware type: 0x%x\n",
			      FUNC0(hdr->mcp_type));
		return EIO;
	}

	/* save firmware version for sysctl */
	FUNC3(sc->fw_version, hdr->version, sizeof(sc->fw_version));
	if (mxge_verbose)
		FUNC1(sc->dev, "firmware id: %s\n", hdr->version);

	FUNC2(sc->fw_version, "%d.%d.%d", &sc->fw_ver_major,
	       &sc->fw_ver_minor, &sc->fw_ver_tiny);

	if (!(sc->fw_ver_major == MXGEFW_VERSION_MAJOR
	      && sc->fw_ver_minor == MXGEFW_VERSION_MINOR)) {
		FUNC1(sc->dev, "Found firmware version %s\n",
			      sc->fw_version);
		FUNC1(sc->dev, "Driver needs %d.%d\n",
			      MXGEFW_VERSION_MAJOR, MXGEFW_VERSION_MINOR);
		return EINVAL;
	}
	return 0;

}