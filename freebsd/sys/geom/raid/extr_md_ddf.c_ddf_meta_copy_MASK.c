#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct ddf_meta {int sectorsize; int /*<<< orphan*/ * bbm; int /*<<< orphan*/ * pdd; int /*<<< orphan*/ * cr; int /*<<< orphan*/ * vdr; int /*<<< orphan*/ * pdr; int /*<<< orphan*/ * cdr; int /*<<< orphan*/ * hdr; int /*<<< orphan*/  bigendian; } ;
struct TYPE_2__ {int /*<<< orphan*/  bbmlog_length; int /*<<< orphan*/  pdd_length; int /*<<< orphan*/  cr_length; int /*<<< orphan*/  vdr_length; int /*<<< orphan*/  pdr_length; int /*<<< orphan*/  cd_length; } ;

/* Variables and functions */
 int FUNC0 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_MD_DDF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 TYPE_1__* hdr ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(struct ddf_meta *dst, struct ddf_meta *src)
{
	u_int ss;

	dst->bigendian = src->bigendian;
	ss = dst->sectorsize = src->sectorsize;
	dst->hdr = FUNC1(ss, M_MD_DDF, M_WAITOK);
	FUNC2(dst->hdr, src->hdr, ss);
	dst->cdr = FUNC1(FUNC0(src, hdr->cd_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC2(dst->cdr, src->cdr, FUNC0(src, hdr->cd_length) * ss);
	dst->pdr = FUNC1(FUNC0(src, hdr->pdr_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC2(dst->pdr, src->pdr, FUNC0(src, hdr->pdr_length) * ss);
	dst->vdr = FUNC1(FUNC0(src, hdr->vdr_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC2(dst->vdr, src->vdr, FUNC0(src, hdr->vdr_length) * ss);
	dst->cr = FUNC1(FUNC0(src, hdr->cr_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC2(dst->cr, src->cr, FUNC0(src, hdr->cr_length) * ss);
	dst->pdd = FUNC1(FUNC0(src, hdr->pdd_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC2(dst->pdd, src->pdd, FUNC0(src, hdr->pdd_length) * ss);
	if (src->bbm != NULL) {
		dst->bbm = FUNC1(FUNC0(src, hdr->bbmlog_length) * ss, M_MD_DDF, M_WAITOK);
		FUNC2(dst->bbm, src->bbm, FUNC0(src, hdr->bbmlog_length) * ss);
	}
}