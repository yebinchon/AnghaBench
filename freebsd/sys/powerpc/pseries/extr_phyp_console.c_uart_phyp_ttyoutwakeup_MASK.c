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
struct uart_phyp_softc {int dummy; } ;
struct tty {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 struct uart_phyp_softc* FUNC0 (struct tty*) ; 
 int FUNC1 (struct tty*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_phyp_softc*,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct tty *tp)
{
	struct uart_phyp_softc *sc;
	char buffer[8];
	int len;

	sc = FUNC0(tp);
	
	while ((len = FUNC1(tp, buffer, sizeof(buffer))) != 0)
		FUNC2(sc, buffer, len);
}