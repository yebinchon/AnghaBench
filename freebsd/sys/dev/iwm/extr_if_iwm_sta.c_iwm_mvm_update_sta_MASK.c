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
struct iwm_softc {int dummy; } ;
struct iwm_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct iwm_softc*,struct iwm_node*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct iwm_softc *sc, struct iwm_node *in)
{
	return FUNC0(sc, in, TRUE);
}