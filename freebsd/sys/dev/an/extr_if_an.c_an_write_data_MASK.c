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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct an_softc {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AN_BAP0 ; 
 int /*<<< orphan*/  AN_DATA0 ; 
 int /*<<< orphan*/  FUNC0 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 scalar_t__ FUNC2 (struct an_softc*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct an_softc *sc, int id, int off, caddr_t buf, int len)
{
	int			i;
	u_int16_t		*ptr;
	u_int8_t		*ptr2;

	if (off != -1) {
		if (FUNC2(sc, id, off, AN_BAP0))
			return(EIO);
	}

	ptr = (u_int16_t *)buf;
	for (i = len; i > 1; i -= 2)
		FUNC1(sc, AN_DATA0, *ptr++);
	if (i) {
		ptr2 = (u_int8_t *)ptr;
		FUNC0(sc, AN_DATA0, *ptr2);
	}

	return(0);
}