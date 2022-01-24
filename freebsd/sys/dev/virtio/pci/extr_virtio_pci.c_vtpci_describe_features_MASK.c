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
typedef  int /*<<< orphan*/  uint64_t ;
struct vtpci_softc {int /*<<< orphan*/  vtpci_child_feat_desc; int /*<<< orphan*/  vtpci_child_dev; int /*<<< orphan*/  vtpci_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct vtpci_softc *sc, const char *msg,
    uint64_t features)
{
	device_t dev, child;

	dev = sc->vtpci_dev;
	child = sc->vtpci_child_dev;

	if (FUNC0(child) || bootverbose == 0)
		return;

	FUNC1(dev, msg, features, sc->vtpci_child_feat_desc);
}