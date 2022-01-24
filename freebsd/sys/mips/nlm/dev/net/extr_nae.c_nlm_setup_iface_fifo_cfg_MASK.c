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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct nae_port_config {int iface_fifo_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAE_IFACE_FIFO_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC1(uint64_t nae_base, int maxports,
    struct nae_port_config *cfg)
{
	uint32_t reg;
	int fifo_xoff_thresh = 12;
	int i, size;
	int cur_iface_start = 0;

	for (i = 0; i < maxports; i++) {
		size = cfg[i].iface_fifo_size;
		reg = ((fifo_xoff_thresh << 25) |
		    ((size & 0x1ff) << 16) |
		    ((cur_iface_start & 0xff) << 8) |
		    (i & 0x1f));
		FUNC0(nae_base, NAE_IFACE_FIFO_CFG, reg);
		cur_iface_start += size;
	}
}