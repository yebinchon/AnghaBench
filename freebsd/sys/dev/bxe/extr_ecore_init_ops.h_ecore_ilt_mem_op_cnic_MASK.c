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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  ILT_CLIENT_SRC ; 
 int /*<<< orphan*/  ILT_CLIENT_TM ; 
 int FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct bxe_softc *sc, uint8_t memop)
{
	int rc = 0;

	if (FUNC0(sc))
		rc = FUNC1(sc, ILT_CLIENT_SRC, memop);
	if (!rc)
		rc = FUNC1(sc, ILT_CLIENT_TM, memop);

	return rc;
}