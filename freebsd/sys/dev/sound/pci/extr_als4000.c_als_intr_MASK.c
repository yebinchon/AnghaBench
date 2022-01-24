#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
struct sc_info {int /*<<< orphan*/  lock; TYPE_2__ rch; TYPE_1__ pch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALS_CR1E_ACK_PORT ; 
 int /*<<< orphan*/  ALS_ESP_RD_STATUS16 ; 
 int /*<<< orphan*/  ALS_ESP_RD_STATUS8 ; 
 int ALS_IRQ_CR1E ; 
 int ALS_IRQ_MPUIN ; 
 int ALS_IRQ_STATUS16 ; 
 int ALS_IRQ_STATUS8 ; 
 int /*<<< orphan*/  ALS_MIDI_DATA ; 
 int /*<<< orphan*/  IRQ_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int) ; 
 int FUNC3 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *p)
{
	struct sc_info *sc = (struct sc_info *)p;
	u_int8_t intr, sb_status;

	FUNC5(sc->lock);
	intr = FUNC1(sc);

	if (intr & 0x80) {
		FUNC6(sc->lock);
		FUNC4(sc->pch.channel);
		FUNC5(sc->lock);
	}

	if (intr & 0x40) {
		FUNC6(sc->lock);
		FUNC4(sc->rch.channel);
		FUNC5(sc->lock);
	}

	/* ACK interrupt in PCI core */
	FUNC2(sc, intr);

	/* ACK interrupt in SB core */
	sb_status = FUNC3(sc, IRQ_STAT);

	if (sb_status & ALS_IRQ_STATUS8)
		FUNC0(sc, ALS_ESP_RD_STATUS8);
	if (sb_status & ALS_IRQ_STATUS16)
		FUNC0(sc, ALS_ESP_RD_STATUS16);
	if (sb_status & ALS_IRQ_MPUIN)
		FUNC0(sc, ALS_MIDI_DATA);
	if (sb_status & ALS_IRQ_CR1E)
		FUNC0(sc, ALS_CR1E_ACK_PORT);

	FUNC6(sc->lock);
	return;
}