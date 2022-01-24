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
struct g_virstor_metadata {int dummy; } ;
struct g_provider {scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int FUNC0 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct g_consumer*,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,struct g_virstor_metadata*) ; 

__attribute__((used)) static int
FUNC7(struct g_consumer *cp, struct g_virstor_metadata *md)
{
	struct g_provider *pp;
	char *buf;
	int error;

	FUNC3();
	error = FUNC0(cp, 1, 0, 0);
	if (error != 0)
		return (error);
	pp = cp->provider;
	FUNC5();
	buf = FUNC2(cp, pp->mediasize - pp->sectorsize, pp->sectorsize,
	    &error);
	FUNC4();
	FUNC0(cp, -1, 0, 0);
	if (buf == NULL)
		return (error);

	FUNC6(buf, md);
	FUNC1(buf);

	return (0);
}