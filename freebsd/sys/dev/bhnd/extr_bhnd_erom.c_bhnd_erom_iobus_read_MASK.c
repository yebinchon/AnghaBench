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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct bhnd_erom_iobus {scalar_t__ limit; scalar_t__ offset; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  mapped; } ;
struct bhnd_erom_io {int dummy; } ;
typedef  scalar_t__ bhnd_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static uint32_t
FUNC4(struct bhnd_erom_io *eio, bhnd_size_t offset, u_int width)
{
	struct bhnd_erom_iobus *iobus = (struct bhnd_erom_iobus *)eio;

	if (!iobus->mapped) 
		FUNC3("no active mapping");

	if (iobus->limit < width || iobus->limit - width < offset)
		FUNC3("invalid offset %#jx", offset);

	switch (width) {
	case 1:
		return (FUNC0(iobus->bst, iobus->bsh,
		    iobus->offset + offset));
	case 2:
		return (FUNC1(iobus->bst, iobus->bsh,
		    iobus->offset + offset));
	case 4:
		return (FUNC2(iobus->bst, iobus->bsh,
		    iobus->offset + offset));
	default:
		FUNC3("invalid width %u", width);
	}
}