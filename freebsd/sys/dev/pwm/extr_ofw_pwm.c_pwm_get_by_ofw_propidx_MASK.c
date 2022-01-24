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
struct pwm_channel {void* flags; void* period; void* channel; int /*<<< orphan*/ * dev; } ;
typedef  struct pwm_channel* pwm_channel_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  void* pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 struct pwm_channel* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,char*,int,int /*<<< orphan*/ *,int*,void***) ; 

int
FUNC4(device_t consumer, phandle_t node,
    const char *prop_name, int idx, pwm_channel_t *out_channel)
{
	phandle_t xref;
	pcell_t *cells;
	struct pwm_channel channel;
	int ncells, rv;

	rv = FUNC3(node, prop_name, "#pwm-cells",
	  idx, &xref, &ncells, &cells);
	if (rv != 0)
		return (rv);

	channel.dev = FUNC0(xref);
	if (channel.dev == NULL) {
		FUNC1(cells);
		return (ENODEV);
	}

	channel.channel = cells[0];
	channel.period = cells[1];

	if (ncells >= 3)
		channel.flags = cells[2];

	*out_channel = FUNC2(sizeof(struct pwm_channel), M_DEVBUF, M_WAITOK | M_ZERO);
	**out_channel = channel;
	return (0);
}