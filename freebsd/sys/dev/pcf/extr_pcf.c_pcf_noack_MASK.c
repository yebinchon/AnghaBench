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
struct pcf_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LRB ; 
 int /*<<< orphan*/  FUNC1 (struct pcf_softc*) ; 
 int FUNC2 (struct pcf_softc*) ; 

__attribute__((used)) static int
FUNC3(struct pcf_softc *sc, int timeout)
{
	int noack;
	int k = timeout/10;

	FUNC1(sc);
	do {
		noack = FUNC2(sc) & LRB;
		if (!noack)
			break;
		FUNC0(10);				/* XXX wait 10 us */
	} while (k--);

	return (noack);
}