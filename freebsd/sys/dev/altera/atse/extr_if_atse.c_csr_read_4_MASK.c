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
struct atse_softc {int /*<<< orphan*/  atse_mem_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int const,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint32_t
FUNC3(struct atse_softc *sc, uint32_t reg, const char *f, const int l)
{
	uint32_t val4;

	val4 = FUNC2(FUNC1(sc->atse_mem_res, reg * 4));
	FUNC0("[%s:%d] CSR R %s 0x%08x (0x%08x) = 0x%08x\n", f, l, 
	    "atse_mem_res", reg, reg * 4, val4);

	return (val4);
}