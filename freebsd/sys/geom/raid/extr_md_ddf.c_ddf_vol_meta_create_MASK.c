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
typedef  int u_int ;
struct timespec {int dummy; } ;
struct ddf_vol_meta {int sectorsize; TYPE_2__* vde; TYPE_2__* vdc; void* cdr; void* hdr; int /*<<< orphan*/  bigendian; } ;
struct ddf_vd_entry {int dummy; } ;
struct ddf_meta {int sectorsize; void* cdr; void* hdr; int /*<<< orphan*/  bigendian; } ;
struct clocktime {int year; int mon; int day; } ;
struct TYPE_6__ {int /*<<< orphan*/  Configuration_Record_Length; int /*<<< orphan*/  cd_length; } ;
struct TYPE_5__ {void* VD_GUID; } ;
struct TYPE_4__ {int /*<<< orphan*/  Sequence_Number; int /*<<< orphan*/  Signature; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDF_VDCR_SIGNATURE ; 
 int FUNC0 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_MD_DDF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (struct ddf_vol_meta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,struct clocktime*) ; 
 int /*<<< orphan*/  FUNC5 (struct timespec*) ; 
 TYPE_3__* hdr ; 
 void* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,char*,int,int,int,int,int) ; 
 TYPE_1__* vdc ; 

__attribute__((used)) static void
FUNC10(struct ddf_vol_meta *meta, struct ddf_meta *sample)
{
	struct timespec ts;
	struct clocktime ct;
	u_int ss, size;

	meta->bigendian = sample->bigendian;
	ss = meta->sectorsize = sample->sectorsize;
	meta->hdr = FUNC6(ss, M_MD_DDF, M_WAITOK);
	FUNC7(meta->hdr, sample->hdr, ss);
	meta->cdr = FUNC6(FUNC1(sample, hdr->cd_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC7(meta->cdr, sample->cdr, FUNC1(sample, hdr->cd_length) * ss);
	meta->vde = FUNC6(sizeof(struct ddf_vd_entry), M_MD_DDF, M_WAITOK);
	FUNC8(meta->vde, 0xff, sizeof(struct ddf_vd_entry));
	FUNC5(&ts);
	FUNC4(&ts, &ct);
	FUNC9(meta->vde->VD_GUID, 25, "FreeBSD%04d%02d%02d%08x%01x",
	    ct.year, ct.mon, ct.day,
	    FUNC3(), FUNC3() & 0xf);
	size = FUNC0(sample, hdr->Configuration_Record_Length) * ss;
	meta->vdc = FUNC6(size, M_MD_DDF, M_WAITOK);
	FUNC8(meta->vdc, 0xff, size);
	FUNC2(meta, vdc->Signature, DDF_VDCR_SIGNATURE);
	FUNC7(meta->vdc->VD_GUID, meta->vde->VD_GUID, 24);
	FUNC2(meta, vdc->Sequence_Number, 0);
}