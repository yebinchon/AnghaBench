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
typedef  scalar_t__ uint32_t ;
struct ipw_softc {scalar_t__ table1_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipw_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct ipw_softc *sc, uint32_t off, uint32_t info)
{
	FUNC1(sc, FUNC0(sc, sc->table1_base + off), info);
}