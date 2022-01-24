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
struct resource {int dummy; } ;
struct cbb_softc {int /*<<< orphan*/ * exca; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct cbb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,struct resource*) ; 

__attribute__((used)) static int
FUNC3(device_t brdev, device_t child, int type, int rid,
    struct resource *res)
{
	struct cbb_softc *sc = FUNC1(brdev);
	int error;

	error = FUNC2(&sc->exca[0], child, type, rid, res);
	if (error == 0)
		FUNC0(brdev, type);
	return (error);
}