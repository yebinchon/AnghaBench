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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int CMNG_FNS_MINMAX ; 
 int CMNG_FNS_NONE ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 

__attribute__((used)) static int
FUNC2(struct bxe_softc *sc)
{
    if (FUNC0(sc)) {
        return (CMNG_FNS_NONE);
    }

    if (FUNC1(sc)) {
        return (CMNG_FNS_MINMAX);
    }

    return (CMNG_FNS_NONE);
}