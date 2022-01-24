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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  unsigned int uint32_t ;
struct iwm_ucode_capabilities {int /*<<< orphan*/  enabled_api; } ;
struct iwm_ucode_api {int /*<<< orphan*/  api_flags; int /*<<< orphan*/  api_index; } ;
struct iwm_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_NUM_UCODE_TLV_API ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct iwm_softc *sc, const uint8_t *data,
			struct iwm_ucode_capabilities *capa)
{
	const struct iwm_ucode_api *ucode_api = (const void *)data;
	uint32_t api_index = FUNC2(ucode_api->api_index);
	uint32_t api_flags = FUNC2(ucode_api->api_flags);
	int i;

	if (api_index >= FUNC1(IWM_NUM_UCODE_TLV_API, 32)) {
		FUNC0(sc->sc_dev,
		    "api flags index %d larger than supported by driver\n",
		    api_index);
		/* don't return an error so we can load FW that has more bits */
		return 0;
	}

	for (i = 0; i < 32; i++) {
		if (api_flags & (1U << i))
			FUNC3(capa->enabled_api, i + 32 * api_index);
	}

	return 0;
}