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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ GRCBASE_MCP ; 
 int FUNC2 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct bxe_softc *sc)
{
    uint32_t j, val;

    for (j = 0; j < 1000; j++) {
        val = (1UL << 31);
        FUNC3(sc, GRCBASE_MCP + 0x9c, val);
        val = FUNC2(sc, GRCBASE_MCP + 0x9c);
        if (val & (1L << 31))
            break;

        FUNC1(5000);
    }

    if (!(val & (1L << 31))) {
        FUNC0(sc, "Cannot acquire MCP access lock register\n");
        return (-1);
    }

    return (0);
}