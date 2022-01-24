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
typedef  scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bxe_softc*,scalar_t__) ; 

__attribute__((used)) static inline uint32_t
FUNC2(struct bxe_softc *sc,
         uint32_t         reg,
         uint32_t         expected,
         int              ms,
         int              wait)
{
    uint32_t val;

    do {
        val = FUNC1(sc, reg);
        if (val == expected) {
            break;
        }
        ms -= wait;
        FUNC0(wait * 1000);
    } while (ms > 0);

    return (val);
}