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
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UNLOAD_NORMAL ; 
 int FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bxe_softc *sc)
{
    FUNC0(sc);
    return (FUNC1(sc, UNLOAD_NORMAL, TRUE));
}