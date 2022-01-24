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
typedef  int u_int16_t ;
struct sc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_PORT_MEMORY_DATA ; 
 int /*<<< orphan*/  DSP_PORT_MEMORY_INDEX ; 
 int /*<<< orphan*/  DSP_PORT_MEMORY_TYPE ; 
 int MEMTYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline void
FUNC1(struct sc_info *sc, u_int16_t region, u_int16_t index,
	   u_int16_t data)
{
        FUNC0(sc, DSP_PORT_MEMORY_TYPE, region & MEMTYPE_MASK);
        FUNC0(sc, DSP_PORT_MEMORY_INDEX, index);
        FUNC0(sc, DSP_PORT_MEMORY_DATA, data);
}