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
struct xae_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int EINVAL ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct xae_softc *sc, uint8_t *hwaddr)
{
	phandle_t node;
	int len;

	node = FUNC2(sc->dev);

	/* Check if there is property */
	if ((len = FUNC1(node, "local-mac-address")) <= 0)
		return (EINVAL);

	if (len != ETHER_ADDR_LEN)
		return (EINVAL);

	FUNC0(node, "local-mac-address", hwaddr,
	    ETHER_ADDR_LEN);

	return (0);
}