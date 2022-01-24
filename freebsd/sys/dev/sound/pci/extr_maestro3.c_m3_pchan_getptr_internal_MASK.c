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
typedef  int u_int32_t ;
struct sc_pchinfo {int /*<<< orphan*/  dac_idx; scalar_t__ dac_data; int /*<<< orphan*/  buffer; struct sc_info* parent; } ;
struct sc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALL ; 
 scalar_t__ CDATA_HOST_SRC_CURRENTH ; 
 scalar_t__ CDATA_HOST_SRC_CURRENTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct sc_info*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC3(struct sc_pchinfo *ch)
{
	struct sc_info *sc = ch->parent;
	u_int32_t hi, lo, bus_base, bus_crnt;

	bus_base = FUNC2(ch->buffer);
	hi = FUNC1(sc, ch->dac_data + CDATA_HOST_SRC_CURRENTH);
        lo = FUNC1(sc, ch->dac_data + CDATA_HOST_SRC_CURRENTL);
        bus_crnt = lo | (hi << 16);

	FUNC0(CALL, ("m3_pchan_getptr(dac=%d) result=%d\n",
			ch->dac_idx, bus_crnt - bus_base));

	return (bus_crnt - bus_base); /* current byte offset of channel */
}