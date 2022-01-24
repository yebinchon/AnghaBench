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
struct ath_softc {int dummy; } ;
struct ath_ratectrl {int arc_space; } ;
struct amrr_softc {struct ath_ratectrl arc; } ;
struct amrr_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 struct amrr_softc* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

struct ath_ratectrl *
FUNC2(struct ath_softc *sc)
{
	struct amrr_softc *asc;

	asc = FUNC1(sizeof(struct amrr_softc), M_DEVBUF, M_NOWAIT|M_ZERO);
	if (asc == NULL)
		return NULL;
	asc->arc.arc_space = sizeof(struct amrr_node);
	FUNC0(sc);

	return &asc->arc;
}