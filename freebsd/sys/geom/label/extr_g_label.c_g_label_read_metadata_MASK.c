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
struct g_label_metadata {int dummy; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct g_consumer*,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct g_label_metadata*) ; 

__attribute__((used)) static int
FUNC6(struct g_consumer *cp, struct g_label_metadata *md)
{
	struct g_provider *pp;
	u_char *buf;
	int error;

	FUNC2();

	pp = cp->provider;
	FUNC4();
	buf = FUNC1(cp, pp->mediasize - pp->sectorsize, pp->sectorsize,
	    &error);
	FUNC3();
	if (buf == NULL)
		return (error);
	/* Decode metadata. */
	FUNC5(buf, md);
	FUNC0(buf);

	return (0);
}