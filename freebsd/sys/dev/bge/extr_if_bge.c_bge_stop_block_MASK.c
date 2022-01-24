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
struct bge_softc {int dummy; } ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int BGE_TIMEOUT ; 
 int FUNC1 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct bge_softc *sc, bus_size_t reg, uint32_t bit)
{
	int i;

	FUNC0(sc, reg, bit);

	for (i = 0; i < BGE_TIMEOUT; i++) {
		if ((FUNC1(sc, reg) & bit) == 0)
			return;
		FUNC2(100);
        }
}