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
struct sc_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int) ; 
 struct sc_info* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct sc_info *sc = FUNC4(dev);

	FUNC0(CALL, ("m3_pci_shutdown\n"));

	FUNC1(sc);
	FUNC3(sc, 3); /* power off */
	FUNC2(sc);

	return 0;
}