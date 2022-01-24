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
struct atiixp_info {scalar_t__ st; scalar_t__ sh; int /*<<< orphan*/ * codec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_info*) ; 
 struct atiixp_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	int r;
	struct atiixp_info *sc;

	sc = FUNC2(dev);
	if (sc != NULL) {
		if (sc->codec != NULL) {
			r = FUNC3(dev);
			if (r)
				return (r);
		}
		sc->codec = NULL;
		if (sc->st != 0 && sc->sh != 0)
			FUNC0(sc);
		FUNC1(sc);
	}
	return (0);
}