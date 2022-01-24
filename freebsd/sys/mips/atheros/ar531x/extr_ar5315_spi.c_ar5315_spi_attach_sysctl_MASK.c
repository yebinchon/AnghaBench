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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ar5315_spi_softc {int /*<<< orphan*/  sc_debug; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 struct ar5315_spi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct ar5315_spi_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;

	sc = FUNC2(dev);
	ctx = FUNC3(dev);
	tree = FUNC4(dev);

	FUNC0(ctx, FUNC1(tree), OID_AUTO,
		"debug", CTLFLAG_RW, &sc->sc_debug, 0,
		"ar5315_spi debugging flags");
}