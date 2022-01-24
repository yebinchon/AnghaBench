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
struct ecore_exeq_elem {int dummy; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 struct ecore_exeq_elem* FUNC1 (int,int /*<<< orphan*/ ,struct bxe_softc*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 

__attribute__((used)) static inline struct ecore_exeq_elem *FUNC2(
	struct bxe_softc *sc)
{
	FUNC0(sc, "Allocating a new exe_queue element\n");
	return FUNC1(sizeof(struct ecore_exeq_elem), GFP_ATOMIC,
			    sc);
}