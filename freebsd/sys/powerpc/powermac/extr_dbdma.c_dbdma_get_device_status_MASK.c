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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  dbdma_channel_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

uint8_t
FUNC1(dbdma_channel_t *chan)
{
	return (FUNC0(chan) & 0x00ff);
}