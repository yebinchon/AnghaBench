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
typedef  int /*<<< orphan*/  uint8_t ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (struct rtwn_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtwn_softc*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct rtwn_softc *sc, const uint8_t *addr, int id)
{
	int error;

	error = FUNC4(sc, FUNC0(id), FUNC2(&addr[0]));
	if (error != 0)
		return (error);
	error = FUNC3(sc, FUNC0(id) + 4, FUNC1(&addr[4]));

	return (error);
}