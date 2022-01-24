#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int u_int ;
struct g_provider {int sectorsize; int mediasize; int /*<<< orphan*/  name; } ;
struct g_consumer {struct g_provider* provider; } ;
struct ddf_meta {int sectorsize; int bigendian; struct ddf_header* bbm; struct ddf_header* pdd; struct ddf_header* cr; struct ddf_header* vdr; struct ddf_header* pdr; struct ddf_header* cdr; struct ddf_header* hdr; } ;
struct ddf_header {scalar_t__ Signature; scalar_t__ Header_Type; int /*<<< orphan*/  bbmlog_length; int /*<<< orphan*/  bbmlog_section; int /*<<< orphan*/  pdd_length; int /*<<< orphan*/  pdd_section; int /*<<< orphan*/  cr_length; int /*<<< orphan*/  cr_section; int /*<<< orphan*/  vdr_length; int /*<<< orphan*/  vdr_section; TYPE_1__* entry; int /*<<< orphan*/  pdr_length; int /*<<< orphan*/  pdr_section; int /*<<< orphan*/  cd_length; int /*<<< orphan*/  cd_section; int /*<<< orphan*/  Configuration_Record_Length; int /*<<< orphan*/  Max_PD_Entries; int /*<<< orphan*/  Max_Primary_Element_Entries; int /*<<< orphan*/  Vendor_Specific_Logs_Length; int /*<<< orphan*/  Vendor_Specific_Logs; int /*<<< orphan*/  Diagnostic_Space_Length; int /*<<< orphan*/  Diagnostic_Space; int /*<<< orphan*/  Secondary_Header_LBA; int /*<<< orphan*/  Primary_Header_LBA; int /*<<< orphan*/  DDF_Header_GUID; int /*<<< orphan*/  CRC; } ;
typedef  int off_t ;
struct TYPE_14__ {int /*<<< orphan*/  Signature; } ;
struct TYPE_13__ {int /*<<< orphan*/  Signature; } ;
struct TYPE_12__ {int /*<<< orphan*/  PD_Reference; int /*<<< orphan*/  Signature; } ;
struct TYPE_11__ {TYPE_2__* entry; int /*<<< orphan*/  Populated_PDEs; int /*<<< orphan*/  Signature; } ;
struct TYPE_10__ {int /*<<< orphan*/  Signature; } ;
struct TYPE_9__ {int /*<<< orphan*/  Configured_Size; int /*<<< orphan*/  PD_State; int /*<<< orphan*/  PD_Reference; } ;
struct TYPE_8__ {int /*<<< orphan*/  PD_GUID; } ;

/* Variables and functions */
 int DDF_BBML_SIGNATURE ; 
 int DDF_CONTROLLER_DATA_SIGNATURE ; 
 scalar_t__ DDF_HEADER_ANCHOR ; 
 scalar_t__ DDF_HEADER_PRIMARY ; 
 scalar_t__ DDF_HEADER_SECONDARY ; 
 scalar_t__ DDF_HEADER_SIGNATURE ; 
 int DDF_PDD_SIGNATURE ; 
 int DDF_PDE_FAILED ; 
 int DDF_PDR_SIGNATURE ; 
 int DDF_VD_RECORD_SIGNATURE ; 
 int EINVAL ; 
 int FUNC0 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC2 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,...) ; 
 int MAXPHYS ; 
 int /*<<< orphan*/  M_MD_DDF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC4 (struct ddf_meta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ddf_meta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ddf_meta*,int /*<<< orphan*/ ,unsigned long long) ; 
 TYPE_7__* bbm ; 
 scalar_t__ FUNC7 (scalar_t__*) ; 
 TYPE_6__* cdr ; 
 scalar_t__ FUNC8 (struct ddf_header*,int) ; 
 int FUNC9 (struct ddf_meta*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ddf_meta*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (struct g_consumer*,int,int,int*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (scalar_t__*) ; 
 void* FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ddf_header*,char*,int) ; 
 int FUNC19 (int,int) ; 
 TYPE_5__* pdd ; 
 TYPE_4__* pdr ; 
 TYPE_3__* vdr ; 

__attribute__((used)) static int
FUNC20(struct g_consumer *cp, struct ddf_meta *meta)
{
	struct g_provider *pp;
	struct ddf_header *ahdr, *hdr;
	char *abuf, *buf;
	off_t plba, slba, lba;
	int error, len, i;
	u_int ss;
	uint32_t val;

	FUNC10(meta);
	pp = cp->provider;
	ss = meta->sectorsize = pp->sectorsize;
	/* Read anchor block. */
	abuf = FUNC12(cp, pp->mediasize - ss, ss, &error);
	if (abuf == NULL) {
		FUNC3(1, "Cannot read metadata from %s (error=%d).",
		    pp->name, error);
		return (error);
	}
	ahdr = (struct ddf_header *)abuf;

	/* Check if this is an DDF RAID struct */
	if (FUNC7(&ahdr->Signature) == DDF_HEADER_SIGNATURE)
		meta->bigendian = 1;
	else if (FUNC14(&ahdr->Signature) == DDF_HEADER_SIGNATURE)
		meta->bigendian = 0;
	else {
		FUNC3(1, "DDF signature check failed on %s", pp->name);
		error = EINVAL;
		goto done;
	}
	if (ahdr->Header_Type != DDF_HEADER_ANCHOR) {
		FUNC3(1, "DDF header type check failed on %s", pp->name);
		error = EINVAL;
		goto done;
	}
	meta->hdr = ahdr;
	plba = FUNC2(meta, hdr->Primary_Header_LBA);
	slba = FUNC2(meta, hdr->Secondary_Header_LBA);
	val = FUNC1(meta, hdr->CRC);
	FUNC5(meta, hdr->CRC, 0xffffffff);
	meta->hdr = NULL;
	if (FUNC8(ahdr, ss) != val) {
		FUNC3(1, "DDF CRC mismatch on %s", pp->name);
		error = EINVAL;
		goto done;
	}
	if ((plba + 6) * ss >= pp->mediasize) {
		FUNC3(1, "DDF primary header LBA is wrong on %s", pp->name);
		error = EINVAL;
		goto done;
	}
	if (slba != -1 && (slba + 6) * ss >= pp->mediasize) {
		FUNC3(1, "DDF secondary header LBA is wrong on %s", pp->name);
		error = EINVAL;
		goto done;
	}
	lba = plba;

doread:
	error = 0;
	FUNC10(meta);

	/* Read header block. */
	buf = FUNC12(cp, lba * ss, ss, &error);
	if (buf == NULL) {
readerror:
		FUNC3(1, "DDF %s metadata read error on %s (error=%d).",
		    (lba == plba) ? "primary" : "secondary", pp->name, error);
		if (lba == plba && slba != -1) {
			lba = slba;
			goto doread;
		}
		FUNC3(1, "DDF metadata read error on %s.", pp->name);
		goto done;
	}
	meta->hdr = FUNC15(ss, M_MD_DDF, M_WAITOK);
	FUNC18(meta->hdr, buf, ss);
	FUNC11(buf);
	hdr = meta->hdr;
	val = FUNC1(meta, hdr->CRC);
	FUNC5(meta, hdr->CRC, 0xffffffff);
	if (hdr->Signature != ahdr->Signature ||
	    FUNC8(meta->hdr, ss) != val ||
	    FUNC17(hdr->DDF_Header_GUID, ahdr->DDF_Header_GUID, 24) ||
	    FUNC2(meta, hdr->Primary_Header_LBA) != plba ||
	    FUNC2(meta, hdr->Secondary_Header_LBA) != slba) {
hdrerror:
		FUNC3(1, "DDF %s metadata check failed on %s",
		    (lba == plba) ? "primary" : "secondary", pp->name);
		if (lba == plba && slba != -1) {
			lba = slba;
			goto doread;
		}
		FUNC3(1, "DDF metadata check failed on %s", pp->name);
		error = EINVAL;
		goto done;
	}
	if ((lba == plba && hdr->Header_Type != DDF_HEADER_PRIMARY) ||
	    (lba == slba && hdr->Header_Type != DDF_HEADER_SECONDARY))
		goto hdrerror;
	len = 1;
	len = FUNC16(len, FUNC1(meta, hdr->cd_section) + FUNC1(meta, hdr->cd_length));
	len = FUNC16(len, FUNC1(meta, hdr->pdr_section) + FUNC1(meta, hdr->pdr_length));
	len = FUNC16(len, FUNC1(meta, hdr->vdr_section) + FUNC1(meta, hdr->vdr_length));
	len = FUNC16(len, FUNC1(meta, hdr->cr_section) + FUNC1(meta, hdr->cr_length));
	len = FUNC16(len, FUNC1(meta, hdr->pdd_section) + FUNC1(meta, hdr->pdd_length));
	if ((val = FUNC1(meta, hdr->bbmlog_section)) != 0xffffffff)
		len = FUNC16(len, val + FUNC1(meta, hdr->bbmlog_length));
	if ((val = FUNC1(meta, hdr->Diagnostic_Space)) != 0xffffffff)
		len = FUNC16(len, val + FUNC1(meta, hdr->Diagnostic_Space_Length));
	if ((val = FUNC1(meta, hdr->Vendor_Specific_Logs)) != 0xffffffff)
		len = FUNC16(len, val + FUNC1(meta, hdr->Vendor_Specific_Logs_Length));
	if ((plba + len) * ss >= pp->mediasize)
		goto hdrerror;
	if (slba != -1 && (slba + len) * ss >= pp->mediasize)
		goto hdrerror;
	/* Workaround for Adaptec implementation. */
	if (FUNC0(meta, hdr->Max_Primary_Element_Entries) == 0xffff) {
		FUNC4(meta, hdr->Max_Primary_Element_Entries,
		    FUNC19(FUNC0(meta, hdr->Max_PD_Entries),
		    (FUNC0(meta, hdr->Configuration_Record_Length) * ss - 512) / 12));
	}

	if (FUNC1(meta, hdr->cd_length) * ss >= MAXPHYS ||
	    FUNC1(meta, hdr->pdr_length) * ss >= MAXPHYS ||
	    FUNC1(meta, hdr->vdr_length) * ss >= MAXPHYS ||
	    FUNC1(meta, hdr->cr_length) * ss >= MAXPHYS ||
	    FUNC1(meta, hdr->pdd_length) * ss >= MAXPHYS ||
	    FUNC1(meta, hdr->bbmlog_length) * ss >= MAXPHYS) {
		FUNC3(1, "%s: Blocksize is too big.", pp->name);
		goto hdrerror;
	}

	/* Read controller data. */
	buf = FUNC12(cp, (lba + FUNC1(meta, hdr->cd_section)) * ss,
	    FUNC1(meta, hdr->cd_length) * ss, &error);
	if (buf == NULL)
		goto readerror;
	meta->cdr = FUNC15(FUNC1(meta, hdr->cd_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC18(meta->cdr, buf, FUNC1(meta, hdr->cd_length) * ss);
	FUNC11(buf);
	if (FUNC1(meta, cdr->Signature) != DDF_CONTROLLER_DATA_SIGNATURE)
		goto hdrerror;

	/* Read physical disk records. */
	buf = FUNC12(cp, (lba + FUNC1(meta, hdr->pdr_section)) * ss,
	    FUNC1(meta, hdr->pdr_length) * ss, &error);
	if (buf == NULL)
		goto readerror;
	meta->pdr = FUNC15(FUNC1(meta, hdr->pdr_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC18(meta->pdr, buf, FUNC1(meta, hdr->pdr_length) * ss);
	FUNC11(buf);
	if (FUNC1(meta, pdr->Signature) != DDF_PDR_SIGNATURE)
		goto hdrerror;
	/*
	 * Workaround for reading metadata corrupted due to graid bug.
	 * XXX: Remove this before we have disks above 128PB. :)
	 */
	if (meta->bigendian) {
		for (i = 0; i < FUNC0(meta, pdr->Populated_PDEs); i++) {
			if (FUNC13(meta->pdr->entry[i].PD_GUID, 24))
				continue;
			if (FUNC1(meta, pdr->entry[i].PD_Reference) ==
			    0xffffffff)
				continue;
			if (FUNC2(meta, pdr->entry[i].Configured_Size) >=
			     (1ULL << 48)) {
				FUNC4(meta, pdr->entry[i].PD_State,
				    FUNC0(meta, pdr->entry[i].PD_State) &
				    ~DDF_PDE_FAILED);
				FUNC6(meta, pdr->entry[i].Configured_Size,
				    FUNC2(meta, pdr->entry[i].Configured_Size) &
				    ((1ULL << 48) - 1));
			}
		}
	}

	/* Read virtual disk records. */
	buf = FUNC12(cp, (lba + FUNC1(meta, hdr->vdr_section)) * ss,
	    FUNC1(meta, hdr->vdr_length) * ss, &error);
	if (buf == NULL)
		goto readerror;
	meta->vdr = FUNC15(FUNC1(meta, hdr->vdr_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC18(meta->vdr, buf, FUNC1(meta, hdr->vdr_length) * ss);
	FUNC11(buf);
	if (FUNC1(meta, vdr->Signature) != DDF_VD_RECORD_SIGNATURE)
		goto hdrerror;

	/* Read configuration records. */
	buf = FUNC12(cp, (lba + FUNC1(meta, hdr->cr_section)) * ss,
	    FUNC1(meta, hdr->cr_length) * ss, &error);
	if (buf == NULL)
		goto readerror;
	meta->cr = FUNC15(FUNC1(meta, hdr->cr_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC18(meta->cr, buf, FUNC1(meta, hdr->cr_length) * ss);
	FUNC11(buf);

	/* Read physical disk data. */
	buf = FUNC12(cp, (lba + FUNC1(meta, hdr->pdd_section)) * ss,
	    FUNC1(meta, hdr->pdd_length) * ss, &error);
	if (buf == NULL)
		goto readerror;
	meta->pdd = FUNC15(FUNC1(meta, hdr->pdd_length) * ss, M_MD_DDF, M_WAITOK);
	FUNC18(meta->pdd, buf, FUNC1(meta, hdr->pdd_length) * ss);
	FUNC11(buf);
	if (FUNC1(meta, pdd->Signature) != DDF_PDD_SIGNATURE)
		goto hdrerror;
	i = FUNC9(meta, NULL, FUNC1(meta, pdd->PD_Reference));
	if (i < 0)
		goto hdrerror;

	/* Read BBM Log. */
	if (FUNC1(meta, hdr->bbmlog_section) != 0xffffffff &&
	    FUNC1(meta, hdr->bbmlog_length) != 0) {
		buf = FUNC12(cp, (lba + FUNC1(meta, hdr->bbmlog_section)) * ss,
		    FUNC1(meta, hdr->bbmlog_length) * ss, &error);
		if (buf == NULL)
			goto readerror;
		meta->bbm = FUNC15(FUNC1(meta, hdr->bbmlog_length) * ss, M_MD_DDF, M_WAITOK);
		FUNC18(meta->bbm, buf, FUNC1(meta, hdr->bbmlog_length) * ss);
		FUNC11(buf);
		if (FUNC1(meta, bbm->Signature) != DDF_BBML_SIGNATURE)
			goto hdrerror;
	}

done:
	FUNC11(abuf);
	if (error != 0)
		FUNC10(meta);
	return (error);
}