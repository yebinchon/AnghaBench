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
struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_bcmhdr {int /*<<< orphan*/  size; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 scalar_t__ BCM_NVRAM_MAGIC ; 
 int BHND_NVRAM_DATA_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (struct bhnd_nvram_io*) ; 
 int FUNC1 (struct bhnd_nvram_io*,int,struct bhnd_nvram_bcmhdr*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bhnd_nvram_io *io)
{
	struct bhnd_nvram_bcmhdr	hdr;
	int				error;

	if ((error = FUNC1(io, 0x0, &hdr, sizeof(hdr))))
		return (error);

	if (FUNC2(hdr.magic) != BCM_NVRAM_MAGIC)
		return (ENXIO);

	if (FUNC2(hdr.size) > FUNC0(io))
		return (ENXIO);

	return (BHND_NVRAM_DATA_PROBE_DEFAULT);
}