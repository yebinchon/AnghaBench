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
struct bhnd_nvram_iobuf {int /*<<< orphan*/  io; int /*<<< orphan*/  buf; } ;
struct bhnd_nvram_io {int dummy; } ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bhnd_nvram_io*,size_t,int /*<<< orphan*/ ,size_t) ; 
 struct bhnd_nvram_io* FUNC2 (size_t,size_t) ; 

struct bhnd_nvram_io *
FUNC3(struct bhnd_nvram_io *src, size_t offset,
    size_t size)
{
	struct bhnd_nvram_io	*io;
	struct bhnd_nvram_iobuf	*iobuf;
	int			 error;

	/* Check if offset+size would overflow */
	if (SIZE_MAX - size < offset)
		return (NULL);

	/* Allocate the iobuf instance */
	if ((io = FUNC2(size, size)) == NULL)
		return (NULL);

	/* Copy the input I/O context */
	iobuf = (struct bhnd_nvram_iobuf *)io;
	if ((error = FUNC1(src, offset, iobuf->buf, size))) {
		FUNC0(&iobuf->io);
		return (NULL);
	}

	return (io);
}