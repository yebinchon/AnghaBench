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
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int FUNC0 (struct bhnd_nvram_io*,char const*,void*,size_t*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct bhnd_nvram_io *io, const char *name,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
	return (FUNC0(io, name, outp, olen, otype,
	    true));
}