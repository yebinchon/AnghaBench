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
struct mgb_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mgb_softc*) ; 
 int FUNC1 (struct mgb_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mgb_softc*) ; 
 int FUNC3 (struct mgb_softc*) ; 

__attribute__((used)) static int
FUNC4(struct mgb_softc *sc)
{
	int error = 0;

	error = FUNC1(sc);
	if (error != 0)
		goto fail;

	FUNC2(sc);

	error = FUNC3(sc);
	if (error != 0)
		goto fail;

	error = FUNC0(sc);
	if (error != 0)
		goto fail;

fail:
	return error;
}