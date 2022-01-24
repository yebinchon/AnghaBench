#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
struct ddf_vol_meta {int sectorsize; struct ddf_vdc_record** bvdc; struct ddf_vdc_record* vdc; struct ddf_vdc_record* vde; struct ddf_vdc_record* cdr; struct ddf_vdc_record* hdr; int /*<<< orphan*/  bigendian; TYPE_1__* vdr; } ;
struct ddf_vdc_record {int /*<<< orphan*/  Sequence_Number; int /*<<< orphan*/  Secondary_Element_Seq; int /*<<< orphan*/  Secondary_Element_Count; } ;
struct ddf_vd_entry {int /*<<< orphan*/  Sequence_Number; int /*<<< orphan*/  Secondary_Element_Seq; int /*<<< orphan*/  Secondary_Element_Count; } ;
struct ddf_meta {int sectorsize; struct ddf_vdc_record** bvdc; struct ddf_vdc_record* vdc; struct ddf_vdc_record* vde; struct ddf_vdc_record* cdr; struct ddf_vdc_record* hdr; int /*<<< orphan*/  bigendian; TYPE_1__* vdr; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  Sequence_Number; } ;
struct TYPE_5__ {int /*<<< orphan*/  cd_length; int /*<<< orphan*/  Configuration_Record_Length; } ;
struct TYPE_4__ {struct ddf_vdc_record* entry; } ;

/* Variables and functions */
 int FUNC0 (struct ddf_vol_meta*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ddf_vol_meta*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ddf_vol_meta*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ddf_vol_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_MD_DDF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 TYPE_3__** bvdc ; 
 size_t FUNC4 (struct ddf_vol_meta*,int /*<<< orphan*/ *) ; 
 struct ddf_vdc_record* FUNC5 (struct ddf_vol_meta*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ddf_vdc_record*,int /*<<< orphan*/ ) ; 
 TYPE_2__* hdr ; 
 void* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ddf_vdc_record*,struct ddf_vdc_record*,int) ; 

__attribute__((used)) static void
FUNC9(struct ddf_vol_meta *dst, struct ddf_meta *src,
    uint8_t *GUID, int started)
{
	struct ddf_vd_entry *vde;
	struct ddf_vdc_record *vdc;
	int vnew, bvnew, bvd, size;
	u_int ss;

	vde = &src->vdr->entry[FUNC4(src, GUID)];
	vdc = FUNC5(src, GUID);
	if (FUNC3(src, vdc->Secondary_Element_Count) == 1)
		bvd = 0;
	else
		bvd = FUNC3(src, vdc->Secondary_Element_Seq);
	size = FUNC0(src, hdr->Configuration_Record_Length) * src->sectorsize;

	if (dst->vdc == NULL ||
	    (!started && ((int32_t)(FUNC2(src, vdc->Sequence_Number) -
	    FUNC1(dst, vdc->Sequence_Number))) > 0))
		vnew = 1;
	else
		vnew = 0;

	if (dst->bvdc[bvd] == NULL ||
	    (!started && ((int32_t)(FUNC2(src, vdc->Sequence_Number) -
	    FUNC1(dst, bvdc[bvd]->Sequence_Number))) > 0))
		bvnew = 1;
	else
		bvnew = 0;

	if (vnew) {
		dst->bigendian = src->bigendian;
		ss = dst->sectorsize = src->sectorsize;
		if (dst->hdr != NULL)
			FUNC6(dst->hdr, M_MD_DDF);
		dst->hdr = FUNC7(ss, M_MD_DDF, M_WAITOK);
		FUNC8(dst->hdr, src->hdr, ss);
		if (dst->cdr != NULL)
			FUNC6(dst->cdr, M_MD_DDF);
		dst->cdr = FUNC7(FUNC1(src, hdr->cd_length) * ss, M_MD_DDF, M_WAITOK);
		FUNC8(dst->cdr, src->cdr, FUNC1(src, hdr->cd_length) * ss);
		if (dst->vde != NULL)
			FUNC6(dst->vde, M_MD_DDF);
		dst->vde = FUNC7(sizeof(struct ddf_vd_entry), M_MD_DDF, M_WAITOK);
		FUNC8(dst->vde, vde, sizeof(struct ddf_vd_entry));
		if (dst->vdc != NULL)
			FUNC6(dst->vdc, M_MD_DDF);
		dst->vdc = FUNC7(size, M_MD_DDF, M_WAITOK);
		FUNC8(dst->vdc, vdc, size);
	}
	if (bvnew) {
		if (dst->bvdc[bvd] != NULL)
			FUNC6(dst->bvdc[bvd], M_MD_DDF);
		dst->bvdc[bvd] = FUNC7(size, M_MD_DDF, M_WAITOK);
		FUNC8(dst->bvdc[bvd], vdc, size);
	}
}