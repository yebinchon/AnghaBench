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
struct sfxge_txq {int /*<<< orphan*/ * tsoh_buffer; TYPE_1__* sc; } ;
struct TYPE_2__ {int /*<<< orphan*/  txq_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SFXGE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sfxge_txq *txq)
{
	int i;

	if (txq->tsoh_buffer != NULL) {
		for (i = 0; i < FUNC0(txq->sc->txq_entries); i++)
			FUNC2(&txq->tsoh_buffer[i]);
		FUNC1(txq->tsoh_buffer, M_SFXGE);
	}
}