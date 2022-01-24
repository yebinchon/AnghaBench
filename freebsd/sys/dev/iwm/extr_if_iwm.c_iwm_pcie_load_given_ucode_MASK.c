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
struct iwm_softc {int dummy; } ;
struct iwm_fw_img {scalar_t__ is_dual_cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_CSR_RESET ; 
 int /*<<< orphan*/  IWM_DEBUG_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  IWM_LMPM_SECURE_CPU2_HDR_MEM_SPACE ; 
 int /*<<< orphan*/  IWM_LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*) ; 
 scalar_t__ FUNC3 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*) ; 
 int FUNC5 (struct iwm_softc*,struct iwm_fw_img const*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct iwm_softc *sc, const struct iwm_fw_img *image)
{
	int ret = 0;
	int first_ucode_section;

	FUNC0(sc, IWM_DEBUG_RESET, "working with %s CPU\n",
		     image->is_dual_cpus ? "Dual" : "Single");

	/* load to FW the binary non secured sections of CPU1 */
	ret = FUNC5(sc, image, 1, &first_ucode_section);
	if (ret)
		return ret;

	if (image->is_dual_cpus) {
		/* set CPU2 header address */
		if (FUNC3(sc)) {
			FUNC6(sc,
				       IWM_LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR,
				       IWM_LMPM_SECURE_CPU2_HDR_MEM_SPACE);
			FUNC4(sc);
		}

		/* load to FW the binary sections of CPU2 */
		ret = FUNC5(sc, image, 2,
						 &first_ucode_section);
		if (ret)
			return ret;
	}

	FUNC2(sc);

	/* release CPU reset */
	FUNC1(sc, IWM_CSR_RESET, 0);

	return 0;
}