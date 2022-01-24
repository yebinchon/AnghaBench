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
struct sw_rx_data {int /*<<< orphan*/ * data; int /*<<< orphan*/ * map; } ;
struct qlnx_agg_info {struct sw_rx_data rx_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_tag; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(qlnx_host_t *ha, struct qlnx_agg_info *tpa)
{
        struct sw_rx_data	*rx_buf;

	rx_buf = &tpa->rx_buf;

	if (rx_buf->data != NULL) {
		if (rx_buf->map != NULL) {
			FUNC1(ha->rx_tag, rx_buf->map);
			FUNC0(ha->rx_tag, rx_buf->map);
			rx_buf->map = NULL;
		}
		FUNC2(rx_buf->data);
		rx_buf->data = NULL;
	}
	return;
}