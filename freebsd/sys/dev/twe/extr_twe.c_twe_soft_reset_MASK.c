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
struct twe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWE_AEN_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_STATUS_ATTENTION_INTERRUPT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct twe_softc*) ; 
 scalar_t__ FUNC8 (struct twe_softc*) ; 
 scalar_t__ FUNC9 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct twe_softc*,char*) ; 
 scalar_t__ FUNC11 (struct twe_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(struct twe_softc *sc)
{
    u_int32_t		status_reg;

    FUNC5(2);

    FUNC1(sc);
    FUNC2(sc);

    if (FUNC11(sc, TWE_STATUS_ATTENTION_INTERRUPT, 30)) {
	FUNC10(sc, "no attention interrupt\n");
	return(1);
    }
    FUNC0(sc, TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT);
    if (FUNC7(sc)) {
	FUNC10(sc, "can't drain AEN queue\n");
	return(1);
    }
    if (FUNC9(sc, TWE_AEN_SOFT_RESET)) {
	FUNC10(sc, "reset not reported\n");
	return(1);
    }
    status_reg = FUNC3(sc);
    if (FUNC4(status_reg) || FUNC6(sc, status_reg)) {
	FUNC10(sc, "controller errors detected\n");
	return(1);
    }
    if (FUNC8(sc)) {
	FUNC10(sc, "can't drain response queue\n");
	return(1);
    }
    return(0);
}