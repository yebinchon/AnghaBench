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
struct ioat_softc {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOAT_CHANCMP_OFFSET_LOW ; 
 scalar_t__ IOAT_VER_3_3 ; 
 int /*<<< orphan*/  FUNC0 (struct ioat_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ioat_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct ioat_softc *ioat, uint64_t addr)
{

	if (ioat->version >= IOAT_VER_3_3)
		FUNC0(ioat, IOAT_CHANCMP_OFFSET_LOW, addr);
	else
		FUNC1(ioat, IOAT_CHANCMP_OFFSET_LOW, addr);
}