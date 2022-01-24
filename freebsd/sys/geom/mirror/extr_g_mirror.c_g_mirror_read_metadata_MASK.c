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
struct g_provider {int /*<<< orphan*/  name; scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_mirror_metadata {scalar_t__ md_version; int /*<<< orphan*/  md_magic; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  G_MIRROR_MAGIC ; 
 scalar_t__ G_MIRROR_VERSION ; 
 int FUNC1 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct g_consumer*,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,struct g_mirror_metadata*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct g_consumer *cp, struct g_mirror_metadata *md)
{
	struct g_provider *pp;
	u_char *buf;
	int error;

	FUNC4();

	error = FUNC1(cp, 1, 0, 0);
	if (error != 0)
		return (error);
	pp = cp->provider;
	FUNC6();
	/* Metadata are stored on last sector. */
	buf = FUNC3(cp, pp->mediasize - pp->sectorsize, pp->sectorsize,
	    &error);
	FUNC5();
	FUNC1(cp, -1, 0, 0);
	if (buf == NULL) {
		FUNC0(1, "Cannot read metadata from %s (error=%d).",
		    cp->provider->name, error);
		return (error);
	}

	/* Decode metadata. */
	error = FUNC7(buf, md);
	FUNC2(buf);
	if (FUNC8(md->md_magic, G_MIRROR_MAGIC) != 0)
		return (EINVAL);
	if (md->md_version > G_MIRROR_VERSION) {
		FUNC0(0,
		    "Kernel module is too old to handle metadata from %s.",
		    cp->provider->name);
		return (EINVAL);
	}
	if (error != 0) {
		FUNC0(1, "MD5 metadata hash mismatch for provider %s.",
		    cp->provider->name);
		return (error);
	}

	return (0);
}