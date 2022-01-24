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
typedef  int /*<<< orphan*/  u_char ;
struct g_provider {scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_multipath_metadata {int dummy; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (struct g_consumer*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct g_consumer*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct g_multipath_metadata*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct g_consumer *cp,
    struct g_multipath_metadata *md)
{
	struct g_provider *pp;
	u_char *buf;
	int error;

	FUNC3();
	error = FUNC0(cp, 1, 1, 1);
	if (error != 0)
		return (error);
	pp = cp->provider;
	FUNC5();
	buf = FUNC2(pp->sectorsize, M_WAITOK | M_ZERO);
	FUNC7(md, buf);
	error = FUNC6(cp, pp->mediasize - pp->sectorsize,
	    buf, pp->sectorsize);
	FUNC4();
	FUNC0(cp, -1, -1, -1);
	FUNC1(buf);
	return (error);
}