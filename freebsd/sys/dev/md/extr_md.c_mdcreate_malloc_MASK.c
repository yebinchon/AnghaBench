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
struct md_s {scalar_t__ fwsectors; scalar_t__ fwheads; int flags; int mediasize; int sectorsize; int /*<<< orphan*/  indir; int /*<<< orphan*/  uma; int /*<<< orphan*/  name; } ;
struct md_req {int md_options; scalar_t__ md_sectorsize; scalar_t__ md_fwsectors; scalar_t__ md_fwheads; } ;
typedef  int off_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int MD_AUTOUNIT ; 
 int MD_COMPRESS ; 
 int MD_FORCE ; 
 int MD_RESERVE ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ md_malloc_wait ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,uintptr_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct md_s *sc, struct md_req *mdr)
{
	uintptr_t sp;
	int error;
	off_t u;

	error = 0;
	if (mdr->md_options & ~(MD_AUTOUNIT | MD_COMPRESS | MD_RESERVE))
		return (EINVAL);
	if (mdr->md_sectorsize != 0 && !FUNC1(mdr->md_sectorsize))
		return (EINVAL);
	/* Compression doesn't make sense if we have reserved space */
	if (mdr->md_options & MD_RESERVE)
		mdr->md_options &= ~MD_COMPRESS;
	if (mdr->md_fwsectors != 0)
		sc->fwsectors = mdr->md_fwsectors;
	if (mdr->md_fwheads != 0)
		sc->fwheads = mdr->md_fwheads;
	sc->flags = mdr->md_options & (MD_COMPRESS | MD_FORCE);
	sc->indir = FUNC0(sc->mediasize / sc->sectorsize);
	sc->uma = FUNC4(sc->name, sc->sectorsize, NULL, NULL, NULL, NULL,
	    0x1ff, 0);
	if (mdr->md_options & MD_RESERVE) {
		off_t nsectors;

		nsectors = sc->mediasize / sc->sectorsize;
		for (u = 0; u < nsectors; u++) {
			sp = (uintptr_t)FUNC3(sc->uma, (md_malloc_wait ?
			    M_WAITOK : M_NOWAIT) | M_ZERO);
			if (sp != 0)
				error = FUNC2(sc->indir, u, sp);
			else
				error = ENOMEM;
			if (error != 0)
				break;
		}
	}
	return (error);
}