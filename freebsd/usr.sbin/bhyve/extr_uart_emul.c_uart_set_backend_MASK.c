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
struct uart_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*) ; 
 int FUNC2 (struct uart_softc*) ; 
 int FUNC3 (struct uart_softc*,char const*) ; 

int
FUNC4(struct uart_softc *sc, const char *opts)
{
	int retval;

	if (opts == NULL)
		return (0);

	if (FUNC0("stdio", opts) == 0)
		retval = FUNC2(sc);
	else
		retval = FUNC3(sc, opts);
	if (retval == 0)
		FUNC1(sc);

	return (retval);
}