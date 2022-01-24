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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct siba_erom_io {scalar_t__ ncores; int /*<<< orphan*/  eio; } ;
typedef  int bus_size_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int SIBA_CORE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,...) ; 

__attribute__((used)) static uint32_t
FUNC3(struct siba_erom_io *io, u_int core_idx, bus_size_t offset)
{
	/* Sanity check core index and offset */
	if (core_idx >= io->ncores)
		FUNC2("core index %u out of range (ncores=%u)", core_idx,
		    io->ncores);

	if (offset > SIBA_CORE_SIZE - sizeof(uint32_t))
		FUNC2("invalid core offset %#jx", (uintmax_t)offset);

	/* Perform read */
	return (FUNC1(io->eio, FUNC0(core_idx) + offset,
	    4));
}