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
typedef  int /*<<< orphan*/  uint32_t ;
struct uath_softc {int dummy; } ;
struct uath_cmd_rx_filter {void* op; void* bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uath_softc*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int UATH_DEBUG_RECV ; 
 int UATH_DEBUG_RECV_ALL ; 
 int /*<<< orphan*/  WDCMSG_RX_FILTER ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uath_softc*,int /*<<< orphan*/ ,struct uath_cmd_rx_filter*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct uath_softc *sc, uint32_t bits, uint32_t op)
{
	struct uath_cmd_rx_filter rxfilter;

	rxfilter.bits = FUNC1(bits);
	rxfilter.op = FUNC1(op);

	FUNC0(sc, UATH_DEBUG_RECV | UATH_DEBUG_RECV_ALL,
	    "setting Rx filter=0x%x flags=0x%x\n", bits, op);
	return FUNC2(sc, WDCMSG_RX_FILTER, &rxfilter,
	    sizeof rxfilter, 0);
}