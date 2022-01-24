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
struct bhnd_nvram_ioptr {int flags; } ;
struct bhnd_nvram_io {int dummy; } ;

/* Variables and functions */
 int BHND_NVRAM_IOPTR_RDWR ; 
 int ENODEV ; 
 int FUNC0 (struct bhnd_nvram_ioptr*,size_t,void**,size_t,size_t*) ; 

__attribute__((used)) static int
FUNC1(struct bhnd_nvram_io *io, size_t offset,
			   void **ptr, size_t nbytes, size_t *navail)
{
	struct bhnd_nvram_ioptr	*ioptr;
	
	ioptr = (struct bhnd_nvram_ioptr *) io;

	/* Must be writable */
	if (!(ioptr->flags & BHND_NVRAM_IOPTR_RDWR))
		return (ENODEV);
	
	/* Return a pointer into our backing buffer */
	return (FUNC0(ioptr, offset, ptr, nbytes, navail));
}