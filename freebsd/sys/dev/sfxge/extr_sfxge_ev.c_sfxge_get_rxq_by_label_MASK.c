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
typedef  scalar_t__ uint32_t ;
struct sfxge_rxq {size_t index; } ;
struct sfxge_evq {size_t index; TYPE_1__* sc; } ;
struct TYPE_2__ {struct sfxge_rxq** rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static struct sfxge_rxq *
FUNC1(struct sfxge_evq *evq, uint32_t label)
{
	struct sfxge_rxq *rxq;

	FUNC0(label == 0, ("unexpected rxq label != 0"));

	rxq = evq->sc->rxq[evq->index];

	FUNC0(rxq != NULL, ("rxq == NULL"));
	FUNC0(evq->index == rxq->index, ("evq->index != rxq->index"));

	return (rxq);
}