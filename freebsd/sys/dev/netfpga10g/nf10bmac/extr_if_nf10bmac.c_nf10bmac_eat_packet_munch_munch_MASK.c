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
struct nf10bmac_softc {int dummy; } ;
typedef  int REGWTYPE ;

/* Variables and functions */
 int NF10BMAC_DATA_LAST ; 
 int NF10BMAC_DATA_STRB ; 
 int FUNC0 (struct nf10bmac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF10BMAC_RX_DATA ; 
 int /*<<< orphan*/  NF10BMAC_RX_META ; 

__attribute__((used)) static void
FUNC1(struct nf10bmac_softc *sc)
{
	REGWTYPE md, val;

	do {
		md = FUNC0(sc, NF10BMAC_RX_META);
		if ((md & NF10BMAC_DATA_STRB) != 0)
			val = FUNC0(sc, NF10BMAC_RX_DATA);
	} while ((md & NF10BMAC_DATA_STRB) != 0 &&
	    (md & NF10BMAC_DATA_LAST) == 0);
}