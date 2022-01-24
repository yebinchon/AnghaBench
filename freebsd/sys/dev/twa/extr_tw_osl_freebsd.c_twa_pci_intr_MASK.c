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
struct twa_softc {int /*<<< orphan*/  ctlr_handle; } ;
typedef  int /*<<< orphan*/  TW_VOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct twa_softc*,char*) ; 

__attribute__((used)) static TW_VOID
FUNC2(TW_VOID *arg)
{
	struct twa_softc	*sc = (struct twa_softc *)arg;

	FUNC1(10, sc, "entered");
	FUNC0(&(sc->ctlr_handle));
}