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
typedef  int u_int32_t ;
typedef  scalar_t__ time_t ;
struct twe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ time_second ; 

__attribute__((used)) static int
FUNC3(struct twe_softc *sc, u_int32_t status, int timeout)
{
    time_t	expiry;
    u_int32_t	status_reg;

    FUNC2(4);

    expiry = time_second + timeout;

    do {
	status_reg = FUNC1(sc);
	if (status_reg & status)	/* got the required bit(s)? */
	    return(0);
	FUNC0(100000);
    } while (time_second <= expiry);

    return(1);
}