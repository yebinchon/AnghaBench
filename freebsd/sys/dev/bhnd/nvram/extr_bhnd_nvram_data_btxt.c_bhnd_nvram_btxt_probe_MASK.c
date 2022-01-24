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
union bhnd_nvram_btxt_ident {char* btxt; int /*<<< orphan*/  bcm_magic; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef  int /*<<< orphan*/  ident ;

/* Variables and functions */
 scalar_t__ BCM_NVRAM_MAGIC ; 
 int BHND_NVRAM_DATA_PROBE_MAYBE ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 (struct bhnd_nvram_io*,int,union bhnd_nvram_btxt_ident*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct bhnd_nvram_io *io)
{
	union bhnd_nvram_btxt_ident	ident;
	char				c;
	int				error;

	/* Look at the initial header for something that looks like 
	 * an ASCII board text file */
	if ((error = FUNC3(io, 0x0, &ident, sizeof(ident))))
		return (error);

	/* The BCM NVRAM format uses a 'FLSH' little endian magic value, which
	 * shouldn't be interpreted as BTXT */
	if (FUNC4(ident.bcm_magic) == BCM_NVRAM_MAGIC)
		return (ENXIO);

	/* Don't match on non-ASCII/non-printable data */
	for (size_t i = 0; i < FUNC5(ident.btxt); i++) {
		c = ident.btxt[i];
		if (!FUNC1(c))
			return (ENXIO);
	}

	/* The first character should either be a valid key char (alpha),
	 * whitespace, or the start of a comment ('#') */
	c = ident.btxt[0];
	if (!FUNC2(c) && !FUNC0(c) && c != '#')
		return (ENXIO);

	/* We assert a low priority, given that we've only scanned an
	 * initial few bytes of the file. */
	return (BHND_NVRAM_DATA_PROBE_MAYBE);
}