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
struct r92c_tx_desc {int /*<<< orphan*/  txdw1; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_TXDW1_AGGBK ; 
 int /*<<< orphan*/  R92C_TXDW1_AGGEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(void *buf, int enable)
{
	struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;

	if (enable)
		txd->txdw1 |= FUNC0(R92C_TXDW1_AGGEN);
	else
		txd->txdw1 |= FUNC0(R92C_TXDW1_AGGBK);
}