#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mcp_gen_header {int dummy; } ;
struct TYPE_4__ {size_t sram_size; int fw_ver_major; int fw_ver_minor; int fw_ver_tiny; int adopted_rx_filter_bug; int /*<<< orphan*/  dev; int /*<<< orphan*/  mem_res; scalar_t__ sram; } ;
typedef  TYPE_1__ mxge_softc_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ MCP_HEADER_PTR_OFFSET ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mcp_gen_header*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/  volatile) ; 
 struct mcp_gen_header* FUNC4 (size_t const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,struct mcp_gen_header*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(mxge_softc_t *sc)
{
	struct mcp_gen_header *hdr;
	const size_t bytes = sizeof (struct mcp_gen_header);
	size_t hdr_offset;
	int status;

	/* find running firmware header */
	hdr_offset = FUNC3(*(volatile uint32_t *)
			     (sc->sram + MCP_HEADER_PTR_OFFSET));

	if ((hdr_offset & 3) || hdr_offset + sizeof(*hdr) > sc->sram_size) {
		FUNC1(sc->dev,
			      "Running firmware has bad header offset (%d)\n",
			      (int)hdr_offset);
		return EIO;
	}

	/* copy header of running firmware from SRAM to host memory to
	 * validate firmware */
	hdr = FUNC4(bytes, M_DEVBUF, M_NOWAIT);
	if (hdr == NULL) {
		FUNC1(sc->dev, "could not malloc firmware hdr\n");
		return ENOMEM;
	}
	FUNC0(FUNC7(sc->mem_res),
				FUNC6(sc->mem_res),
				hdr_offset, (char *)hdr, bytes);
	status = FUNC5(sc, hdr);
	FUNC2(hdr, M_DEVBUF);

	/*
	 * check to see if adopted firmware has bug where adopting
	 * it will cause broadcasts to be filtered unless the NIC
	 * is kept in ALLMULTI mode
	 */
	if (sc->fw_ver_major == 1 && sc->fw_ver_minor == 4 &&
	    sc->fw_ver_tiny >= 4 && sc->fw_ver_tiny <= 11) {
		sc->adopted_rx_filter_bug = 1;
		FUNC1(sc->dev, "Adopting fw %d.%d.%d: "
			      "working around rx filter bug\n",
			      sc->fw_ver_major, sc->fw_ver_minor,
			      sc->fw_ver_tiny);
	}

	return status;
}