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
struct bhnd_nvram_iores {int bus_width; int /*<<< orphan*/  res; scalar_t__ offset; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,void*,size_t) ; 
 int FUNC3 (struct bhnd_nvram_iores*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct bhnd_nvram_io *io, size_t offset,
    void *buffer, size_t nbytes)
{
	struct bhnd_nvram_iores	*iores;
	size_t			 navail;
	bus_size_t		 r_offset;
	int			 error;

	iores = (struct bhnd_nvram_iores *)io;

	/* Validate the request and determine the actual number of writable
	 * bytes */
	navail = nbytes;
	if ((error = FUNC3(iores, offset, &navail)))
		return (error);

	/* At least nbytes must be writable */
	if (navail < nbytes)
		return (ENXIO);

	/* Determine actual resource offset and perform the write */
	r_offset = iores->offset + offset;
	switch (iores->bus_width) {
	case 1:
		FUNC0(iores->res, r_offset, buffer,
		    nbytes);
		break;
	case 2:
		FUNC1(iores->res, r_offset, buffer,
		    nbytes / 2);
		break;
	case 4:
		FUNC2(iores->res, r_offset, buffer,
		    nbytes / 4);
		break;
	default:
		FUNC4("unreachable!");
	}

	return (0);
}