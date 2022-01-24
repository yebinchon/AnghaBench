#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ chan; } ;
typedef  TYPE_1__ xdma_channel_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct pl330_channel {int /*<<< orphan*/  capacity; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(device_t dev, xdma_channel_t *xchan,
    uint32_t *capacity)
{
	struct pl330_channel *chan;

	chan = (struct pl330_channel *)xchan->chan;

	*capacity = chan->capacity;

	return (0);
}