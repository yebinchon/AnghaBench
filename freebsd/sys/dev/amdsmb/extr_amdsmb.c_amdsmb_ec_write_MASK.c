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
typedef  int /*<<< orphan*/  u_char ;
struct amdsmb_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdsmb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdsmb_softc*) ; 
 int /*<<< orphan*/  EC_CMD ; 
 int /*<<< orphan*/  EC_CMD_WR ; 
 int /*<<< orphan*/  EC_DATA ; 
 scalar_t__ FUNC2 (struct amdsmb_softc*) ; 

__attribute__((used)) static int
FUNC3(struct amdsmb_softc *sc, u_char addr, u_char data)
{

	FUNC1(sc);
	if (FUNC2(sc))
		return (1);
	FUNC0(sc, EC_CMD, EC_CMD_WR);

	if (FUNC2(sc))
		return (1);
	FUNC0(sc, EC_DATA, addr);

	if (FUNC2(sc))
		return (1);
	FUNC0(sc, EC_DATA, data);

	return (0);
}