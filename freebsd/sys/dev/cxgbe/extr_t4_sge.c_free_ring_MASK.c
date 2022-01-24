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
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  scalar_t__ bus_dma_tag_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct adapter *sc, bus_dma_tag_t tag, bus_dmamap_t map,
    bus_addr_t pa, void *va)
{
	if (pa)
		FUNC1(tag, map);
	if (va)
		FUNC2(tag, va, map);
	if (tag)
		FUNC0(tag);

	return (0);
}