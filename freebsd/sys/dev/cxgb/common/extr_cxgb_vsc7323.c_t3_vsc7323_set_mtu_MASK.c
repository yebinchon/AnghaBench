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
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(adapter_t *adap, unsigned int mtu, int port)
{
	return FUNC1(adap, FUNC0(1, port, 2), mtu);
}