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
struct g_provider {int sectorsize; int /*<<< orphan*/  name; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M_MD_NVIDIA ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct g_consumer*,scalar_t__,char*,int) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct g_consumer *cp)
{
	struct g_provider *pp;
	char *buf;
	int error;

	pp = cp->provider;
	buf = FUNC3(pp->sectorsize, M_MD_NVIDIA, M_WAITOK | M_ZERO);
	error = FUNC2(cp,
	    pp->mediasize - 2 * pp->sectorsize, buf, pp->sectorsize);
	if (error != 0) {
		FUNC0(1, "Cannot erase metadata on %s (error=%d).",
		    pp->name, error);
	}
	FUNC1(buf, M_MD_NVIDIA);
	return (error);
}