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
typedef  int uint32_t ;
struct vmctx {int dummy; } ;

/* Variables and functions */
#define  BHYVE_ACPI_DISABLE 129 
#define  BHYVE_ACPI_ENABLE 128 
 int /*<<< orphan*/  EVF_SIGNAL ; 
 int /*<<< orphan*/  PM1_SCI_EN ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  old_power_handler ; 
 int /*<<< orphan*/  pm1_control ; 
 int /*<<< orphan*/  pm_lock ; 
 int /*<<< orphan*/ * power_button ; 
 int /*<<< orphan*/  power_button_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{

	FUNC0(!in);
	if (bytes != 1)
		return (-1);

	FUNC3(&pm_lock);
	switch (*eax) {
	case BHYVE_ACPI_ENABLE:
		pm1_control |= PM1_SCI_EN;
		if (power_button == NULL) {
			power_button = FUNC1(SIGTERM, EVF_SIGNAL,
			    power_button_handler, ctx);
			old_power_handler = FUNC5(SIGTERM, SIG_IGN);
		}
		break;
	case BHYVE_ACPI_DISABLE:
		pm1_control &= ~PM1_SCI_EN;
		if (power_button != NULL) {
			FUNC2(power_button);
			power_button = NULL;
			FUNC5(SIGTERM, old_power_handler);
		}
		break;
	}
	FUNC4(&pm_lock);
	return (0);
}