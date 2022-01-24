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
struct arge_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_MAC_MII_INDICATOR ; 
 int /*<<< orphan*/  FUNC0 (struct arge_softc*) ; 
 int FUNC1 (struct arge_softc*,int /*<<< orphan*/ ) ; 
 int ARGE_MII_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct arge_softc *sc)
{
	int i,result;

	for (i = 0; i < ARGE_MII_TIMEOUT; i++) {
		FUNC2(5);
		FUNC0(sc);
		result = FUNC1(sc, AR71XX_MAC_MII_INDICATOR);
		if (! result)
			return (0);
		FUNC2(5);
	}
	return (-1);
}