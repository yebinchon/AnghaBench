#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ bfs_aggr; } ;
struct ath_buf {TYPE_1__ bf_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,struct ath_buf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,struct ath_buf*,int) ; 

void
FUNC2(struct ath_softc *sc, struct ath_buf *bf, int fail)
{
	if (bf->bf_state.bfs_aggr)
		FUNC0(sc, bf, fail);
	else
		FUNC1(sc, bf, fail);
}