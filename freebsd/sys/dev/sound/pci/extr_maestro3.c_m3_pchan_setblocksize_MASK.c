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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sc_pchinfo {int /*<<< orphan*/  buffer; int /*<<< orphan*/  dac_idx; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC2(kobj_t kobj, void *chdata, u_int32_t blocksize)
{
	struct sc_pchinfo *ch = chdata;

	FUNC0(CHANGE, ("m3_pchan_setblocksize(dac=%d, blocksize=%d)\n",
			  ch->dac_idx, blocksize));

	return (FUNC1(ch->buffer));
}