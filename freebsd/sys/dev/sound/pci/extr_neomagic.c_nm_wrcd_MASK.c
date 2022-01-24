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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sc_info {int /*<<< orphan*/  dev; scalar_t__ ac97_base; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, void *devinfo, int regno, u_int32_t data)
{
	struct sc_info *sc = (struct sc_info *)devinfo;
	int cnt = 3;

	if (!FUNC2(sc)) {
		while (cnt-- > 0) {
			FUNC3(sc, sc->ac97_base + regno, data, 2);
			if (!FUNC2(sc)) {
				FUNC0(1000);
				return 0;
			}
		}
	}
	FUNC1(sc->dev, "ac97 codec not ready\n");
	return -1;
}