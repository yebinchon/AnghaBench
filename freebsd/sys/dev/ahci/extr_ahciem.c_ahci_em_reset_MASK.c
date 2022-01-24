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
struct ahci_enclosure {int channels; int /*<<< orphan*/  r_memc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AHCI_EM_RST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct ahci_enclosure* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct ahci_enclosure *enc;
	int i, timeout;

	enc = FUNC4(dev);
	FUNC1(enc->r_memc, 0, AHCI_EM_RST);
	timeout = 1000;
	while ((FUNC0(enc->r_memc, 0) & AHCI_EM_RST) &&
	    --timeout > 0)
		FUNC2(1000);
	if (timeout == 0) {
		FUNC5(dev, "EM timeout\n");
		return (1);
	}
	for (i = 0; i < enc->channels; i++)
		FUNC3(dev, i);
	return (0);
}