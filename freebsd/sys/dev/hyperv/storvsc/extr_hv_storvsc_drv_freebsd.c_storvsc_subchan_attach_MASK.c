#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmstor_chan_props {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct storvsc_softc {TYPE_1__* hs_drv_props; } ;
typedef  int /*<<< orphan*/  props ;
struct TYPE_2__ {int /*<<< orphan*/  drv_ringbuffer_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  hv_storvsc_on_channel_callback ; 
 int /*<<< orphan*/  FUNC0 (struct vmstor_chan_props*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*) ; 
 int FUNC2 (struct vmbus_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct storvsc_softc*) ; 

__attribute__((used)) static void
FUNC3(struct storvsc_softc *sc,
    struct vmbus_channel *new_channel)
{
	struct vmstor_chan_props props;
	int ret = 0;

	FUNC0(&props, 0, sizeof(props));

	FUNC1(new_channel);
	ret = FUNC2(new_channel,
	    sc->hs_drv_props->drv_ringbuffer_size,
  	    sc->hs_drv_props->drv_ringbuffer_size,
	    (void *)&props,
	    sizeof(struct vmstor_chan_props),
	    hv_storvsc_on_channel_callback, sc);
}