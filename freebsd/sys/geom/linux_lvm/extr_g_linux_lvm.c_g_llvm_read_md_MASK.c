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
typedef  char u_char ;
struct g_provider {int sectorsize; int /*<<< orphan*/  name; } ;
struct g_llvm_metadata {int md_relsize; int /*<<< orphan*/  md_reloffset; } ;
struct g_llvm_label {int /*<<< orphan*/  ll_md_offset; } ;
struct g_consumer {struct g_provider* provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 int FUNC1 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct g_consumer*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char*,struct g_llvm_metadata*,struct g_llvm_label*) ; 
 int FUNC8 (char*,size_t,struct g_llvm_metadata*) ; 

int
FUNC9(struct g_consumer *cp, struct g_llvm_metadata *md,
    struct g_llvm_label *ll)
{
	struct g_provider *pp;
	u_char *buf;
	int error;
	int size;

	FUNC4();

	error = FUNC1(cp, 1, 0, 0);
	if (error != 0)
		return (error);
	pp = cp->provider;
	FUNC6();
	buf = FUNC3(cp, ll->ll_md_offset, pp->sectorsize, &error);
	FUNC5();
	FUNC1(cp, -1, 0, 0);
	if (buf == NULL) {
		FUNC0(0, "Cannot read metadata from %s (error=%d)",
		    cp->provider->name, error);
		return (error);
	}

	error = FUNC7(buf, md, ll);
	FUNC2(buf);
	if (error != 0) {
		return (error);
	}

	FUNC0(1, "reading LVM2 config @ %s:%ju", pp->name,
		    ll->ll_md_offset + md->md_reloffset);
	error = FUNC1(cp, 1, 0, 0);
	if (error != 0)
		return (error);
	pp = cp->provider;
	FUNC6();
	/* round up to the nearest sector */
	size = md->md_relsize +
	    (pp->sectorsize - md->md_relsize % pp->sectorsize);
	buf = FUNC3(cp, ll->ll_md_offset + md->md_reloffset, size, &error);
	FUNC5();
	FUNC1(cp, -1, 0, 0);
	if (buf == NULL) {
		FUNC0(0, "Cannot read LVM2 config from %s (error=%d)",
		    pp->name, error);
		return (error);
	}
	buf[md->md_relsize] = '\0';
	FUNC0(10, "LVM config:\n%s\n", buf);
	error = FUNC8(buf, md->md_relsize, md);
	FUNC2(buf);

	return (error);
}