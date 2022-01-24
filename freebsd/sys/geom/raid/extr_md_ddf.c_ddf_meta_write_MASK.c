#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct g_provider {int sectorsize; int mediasize; int /*<<< orphan*/  name; } ;
struct g_consumer {struct g_provider* provider; } ;
struct ddf_vdc_record {int /*<<< orphan*/  CRC; } ;
struct ddf_meta {struct ddf_vdc_record* bbm; struct ddf_vdc_record* pdd; struct ddf_vdc_record* cr; struct ddf_vdc_record* vdr; struct ddf_vdc_record* pdr; struct ddf_vdc_record* cdr; struct ddf_vdc_record* hdr; } ;
typedef  int off_t ;
struct TYPE_12__ {int /*<<< orphan*/  CRC; } ;
struct TYPE_11__ {int /*<<< orphan*/  CRC; } ;
struct TYPE_10__ {int /*<<< orphan*/  bbmlog_section; int /*<<< orphan*/  bbmlog_length; int /*<<< orphan*/  pdd_section; int /*<<< orphan*/  pdd_length; int /*<<< orphan*/  cr_section; int /*<<< orphan*/  Configuration_Record_Length; int /*<<< orphan*/  vdr_section; int /*<<< orphan*/  vdr_length; int /*<<< orphan*/  pdr_section; int /*<<< orphan*/  pdr_length; int /*<<< orphan*/  cd_section; int /*<<< orphan*/  cd_length; int /*<<< orphan*/  CRC; int /*<<< orphan*/  Header_Type; int /*<<< orphan*/  Secondary_Header_LBA; int /*<<< orphan*/  Primary_Header_LBA; } ;
struct TYPE_9__ {int /*<<< orphan*/  CRC; } ;
struct TYPE_8__ {int /*<<< orphan*/  CRC; } ;
struct TYPE_7__ {int /*<<< orphan*/  CRC; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDF_HEADER_ANCHOR ; 
 int /*<<< orphan*/  DDF_HEADER_PRIMARY ; 
 int /*<<< orphan*/  DDF_HEADER_SECONDARY ; 
 int FUNC0 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ddf_meta*) ; 
 struct ddf_vdc_record* FUNC4 (struct ddf_meta*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ddf_meta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ddf_meta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ddf_meta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* bbm ; 
 TYPE_5__* cdr ; 
 int FUNC9 (struct ddf_vdc_record*,int) ; 
 int FUNC10 (struct g_consumer*,int,struct ddf_vdc_record*,int) ; 
 TYPE_4__* hdr ; 
 TYPE_3__* pdd ; 
 TYPE_2__* pdr ; 
 TYPE_1__* vdr ; 

__attribute__((used)) static int
FUNC11(struct g_consumer *cp, struct ddf_meta *meta)
{
	struct g_provider *pp;
	struct ddf_vdc_record *vdc;
	off_t alba, plba, slba, lba;
	u_int ss, size;
	int error, i, num;

	pp = cp->provider;
	ss = pp->sectorsize;
	lba = alba = pp->mediasize / ss - 1;
	plba = FUNC2(meta, hdr->Primary_Header_LBA);
	slba = FUNC2(meta, hdr->Secondary_Header_LBA);

next:
	FUNC8(meta, hdr->Header_Type, (lba == alba) ? DDF_HEADER_ANCHOR :
	    (lba == plba) ? DDF_HEADER_PRIMARY : DDF_HEADER_SECONDARY);
	FUNC6(meta, hdr->CRC, 0xffffffff);
	FUNC6(meta, hdr->CRC, FUNC9(meta->hdr, ss));
	error = FUNC10(cp, lba * ss, meta->hdr, ss);
	if (error != 0) {
err:
		FUNC5(1, "Cannot write metadata to %s (error=%d).",
		    pp->name, error);
		if (lba != alba)
			goto done;
	}
	if (lba == alba) {
		lba = plba;
		goto next;
	}

	size = FUNC1(meta, hdr->cd_length) * ss;
	FUNC6(meta, cdr->CRC, 0xffffffff);
	FUNC6(meta, cdr->CRC, FUNC9(meta->cdr, size));
	error = FUNC10(cp, (lba + FUNC1(meta, hdr->cd_section)) * ss,
	    meta->cdr, size);
	if (error != 0)
		goto err;

	size = FUNC1(meta, hdr->pdr_length) * ss;
	FUNC6(meta, pdr->CRC, 0xffffffff);
	FUNC6(meta, pdr->CRC, FUNC9(meta->pdr, size));
	error = FUNC10(cp, (lba + FUNC1(meta, hdr->pdr_section)) * ss,
	    meta->pdr, size);
	if (error != 0)
		goto err;

	size = FUNC1(meta, hdr->vdr_length) * ss;
	FUNC6(meta, vdr->CRC, 0xffffffff);
	FUNC6(meta, vdr->CRC, FUNC9(meta->vdr, size));
	error = FUNC10(cp, (lba + FUNC1(meta, hdr->vdr_section)) * ss,
	    meta->vdr, size);
	if (error != 0)
		goto err;

	size = FUNC0(meta, hdr->Configuration_Record_Length) * ss;
	num = FUNC3(meta);
	for (i = 0; i < num; i++) {
		vdc = FUNC4(meta, i);
		FUNC7(meta, vdc->CRC, 0xffffffff);
		FUNC7(meta, vdc->CRC, FUNC9(vdc, size));
	}
	error = FUNC10(cp, (lba + FUNC1(meta, hdr->cr_section)) * ss,
	    meta->cr, size * num);
	if (error != 0)
		goto err;

	size = FUNC1(meta, hdr->pdd_length) * ss;
	FUNC6(meta, pdd->CRC, 0xffffffff);
	FUNC6(meta, pdd->CRC, FUNC9(meta->pdd, size));
	error = FUNC10(cp, (lba + FUNC1(meta, hdr->pdd_section)) * ss,
	    meta->pdd, size);
	if (error != 0)
		goto err;

	if (FUNC1(meta, hdr->bbmlog_length) != 0) {
		size = FUNC1(meta, hdr->bbmlog_length) * ss;
		FUNC6(meta, bbm->CRC, 0xffffffff);
		FUNC6(meta, bbm->CRC, FUNC9(meta->bbm, size));
		error = FUNC10(cp,
		    (lba + FUNC1(meta, hdr->bbmlog_section)) * ss,
		    meta->bbm, size);
		if (error != 0)
			goto err;
	}

done:
	if (lba == plba && slba != -1) {
		lba = slba;
		goto next;
	}

	return (error);
}