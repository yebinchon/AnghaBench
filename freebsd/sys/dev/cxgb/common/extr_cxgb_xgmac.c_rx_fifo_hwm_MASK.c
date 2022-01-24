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

/* Variables and functions */
 int MAC_RXFIFO_SIZE ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(int mtu)
{
	int hwm;

	hwm = FUNC0(MAC_RXFIFO_SIZE - 3 * mtu, (MAC_RXFIFO_SIZE * 38) / 100);
	return FUNC1(hwm, MAC_RXFIFO_SIZE - 8192);
}