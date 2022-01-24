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
struct vmbus_xact {int dummy; } ;

/* Variables and functions */
 void const* FUNC0 (struct vmbus_xact*,size_t*,int) ; 

const void *
FUNC1(struct vmbus_xact *xact, size_t *resp_len)
{

	return (FUNC0(xact, resp_len, false /* can't sleep */));
}