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
struct twe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*,char*) ; 

__attribute__((used)) static void
FUNC4(struct twe_softc *sc)
{
    FUNC1(4);

    /* instigate a poll for AENs */
    if (FUNC2(sc)) {
	FUNC3(sc, "error polling for signalled AEN\n");
    } else {
	FUNC0(sc, TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT);
    }
}