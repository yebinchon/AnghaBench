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
typedef  int /*<<< orphan*/  uint32_t ;
struct nct_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nct_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nct_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct nct_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct nct_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nct_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin_num, uint32_t *pin_value)
{
	struct nct_softc *sc;

	if (!FUNC3(pin_num))
		return (EINVAL);

	sc = FUNC4(dev);
	FUNC0(sc);
	FUNC1(sc);
	*pin_value = FUNC5(sc, pin_num);
	FUNC2(sc);

	return (0);
}