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
struct cmx_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSR_BULK_OUT_FULL ; 
 int FUNC0 (struct cmx_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmx_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(struct cmx_softc *sc, uint8_t val)
{
	int rv = 0;

	if ((rv = FUNC0(sc, BSR_BULK_OUT_FULL, 0)) != 0) {
		return rv;
	}

	FUNC1(sc, val);

	if ((rv = FUNC0(sc, BSR_BULK_OUT_FULL, 0)) != 0) {
		return rv;
	}

	return 0;
}