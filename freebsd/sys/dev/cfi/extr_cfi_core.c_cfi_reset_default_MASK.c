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
struct cfi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFI_BCS_READ_ARRAY ; 
 int /*<<< orphan*/  CFI_BCS_READ_ARRAY2 ; 
 int /*<<< orphan*/  FUNC0 (struct cfi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct cfi_softc *sc)
{

	FUNC0(sc, 0, CFI_BCS_READ_ARRAY2);
	FUNC0(sc, 0, CFI_BCS_READ_ARRAY);
}