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
struct ukswitch_softc {int numports; int /*<<< orphan*/ ** miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 struct mii_data* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct mii_data *
FUNC1(struct ukswitch_softc *sc, int port)
{

	if (port < 0 || port > sc->numports)
		return (NULL);
	return (FUNC0(*sc->miibus[port]));
}