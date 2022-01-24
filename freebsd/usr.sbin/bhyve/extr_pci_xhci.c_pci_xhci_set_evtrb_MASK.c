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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct xhci_trb {int qwTrb0; int /*<<< orphan*/  dwTrb3; int /*<<< orphan*/  dwTrb2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct xhci_trb *evtrb, uint64_t port, uint32_t errcode,
    uint32_t evtype)
{
	evtrb->qwTrb0 = port << 24;
	evtrb->dwTrb2 = FUNC0(errcode);
	evtrb->dwTrb3 = FUNC1(evtype);
}