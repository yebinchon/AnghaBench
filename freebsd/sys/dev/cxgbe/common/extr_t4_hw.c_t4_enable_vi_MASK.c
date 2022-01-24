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
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct adapter*,unsigned int,unsigned int,int,int,int /*<<< orphan*/ ) ; 

int FUNC1(struct adapter *adap, unsigned int mbox, unsigned int viid,
		 bool rx_en, bool tx_en)
{
	return FUNC0(adap, mbox, viid, rx_en, tx_en, 0);
}