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
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 scalar_t__ SBBC_EPLD_INTERRUPT ; 
 int /*<<< orphan*/  SBBC_EPLD_INTERRUPT_ON ; 
 scalar_t__ SBBC_EPLD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static inline void
FUNC2(bus_space_tag_t bst, bus_space_handle_t bsh)
{

	FUNC0(SBBC_EPLD_INTERRUPT, SBBC_EPLD_INTERRUPT_ON);
	FUNC1(bst, bsh, SBBC_EPLD_OFFSET + SBBC_EPLD_INTERRUPT, 1,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}