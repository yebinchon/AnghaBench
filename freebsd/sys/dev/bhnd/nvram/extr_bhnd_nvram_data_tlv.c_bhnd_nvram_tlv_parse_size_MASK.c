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
typedef  scalar_t__ uint8_t ;
struct bhnd_nvram_io {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ NVRAM_TLV_TYPE_END ; 
 size_t FUNC1 (struct bhnd_nvram_io*) ; 
 int FUNC2 (struct bhnd_nvram_io*,size_t*,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static int
FUNC3(struct bhnd_nvram_io *io, size_t *size)
{
	size_t		next;
	uint8_t		tag;
	int		error;

	/* We have to perform a minimal parse to determine the actual length */
	next = 0x0;
	*size = 0x0;

	/* Iterate over the input until we hit END tag or the read fails */
	do {
		error = FUNC2(io, &next, NULL, &tag);
		if (error)
			return (error);
	} while (tag != NVRAM_TLV_TYPE_END);

	/* Offset should now point to EOF */
	FUNC0(next <= FUNC1(io),
	    ("parse returned invalid EOF offset"));

	*size = next;
	return (0);
}