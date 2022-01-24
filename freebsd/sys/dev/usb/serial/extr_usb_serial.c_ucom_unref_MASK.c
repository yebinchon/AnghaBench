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
struct ucom_super_softc {int sc_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ucom_super_softc*) ; 
 int /*<<< orphan*/  ucom_mtx ; 

int
FUNC3(struct ucom_super_softc *ssc)
{
	int retval;

	FUNC0(&ucom_mtx);
	retval = (ssc->sc_refs < 2);
	ssc->sc_refs--;
	FUNC1(&ucom_mtx);

	if (retval)
		FUNC2(ssc);

	return (retval);
}