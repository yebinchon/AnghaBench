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
struct sample_softc {int dummy; } ;
struct ath_ratectrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct sample_softc*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct ath_ratectrl *arc)
{
	struct sample_softc *ssc = (struct sample_softc *) arc;
	
	FUNC0(ssc, M_DEVBUF);
}