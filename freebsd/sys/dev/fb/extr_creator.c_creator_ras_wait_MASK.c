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
struct creator_softc {int dummy; } ;

/* Variables and functions */
 int FBC_UCSR_FB_BUSY ; 
 int FBC_UCSR_FIFO_OVFL ; 
 int FBC_UCSR_READ_ERR ; 
 int FBC_UCSR_RP_BUSY ; 
 int /*<<< orphan*/  FFB_FBC ; 
 int /*<<< orphan*/  FFB_FBC_UCSR ; 
 int FUNC0 (struct creator_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct creator_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC2(struct creator_softc *sc)
{
	int ucsr;
	int r;

	for (;;) {
		ucsr = FUNC0(sc, FFB_FBC, FFB_FBC_UCSR);
		if ((ucsr & (FBC_UCSR_FB_BUSY | FBC_UCSR_RP_BUSY)) == 0)
			break;
		r = ucsr & (FBC_UCSR_READ_ERR | FBC_UCSR_FIFO_OVFL);
		if (r != 0)
			FUNC1(sc, FFB_FBC, FFB_FBC_UCSR, r);
	}
}