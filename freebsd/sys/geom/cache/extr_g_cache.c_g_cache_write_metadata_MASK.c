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
struct g_consumer {struct g_provider* provider; } ;
struct g_cache_metadata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GCACHE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct g_cache_metadata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct g_consumer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct g_consumer*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct g_consumer *cp, struct g_cache_metadata *md)
{
	struct g_provider *pp;
	u_char *buf;
	int error;

	FUNC3();

	error = FUNC2(cp, 0, 1, 0);
	if (error != 0)
		return (error);
	pp = cp->provider;
	buf = FUNC7((size_t)pp->sectorsize, M_GCACHE, M_WAITOK | M_ZERO);
	FUNC0(md, buf);
	FUNC5();
	error = FUNC6(cp, pp->mediasize - pp->sectorsize, buf, pp->sectorsize);
	FUNC4();
	FUNC2(cp, 0, -1, 0);
	FUNC1(buf, M_GCACHE);

	return (error);
}