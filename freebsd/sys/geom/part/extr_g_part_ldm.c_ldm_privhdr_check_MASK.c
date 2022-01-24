#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
struct ldm_privhdr {int start; int size; int db_offset; int db_size; int* th_offset; int conf_size; int log_size; } ;
struct TYPE_5__ {int db_offset; } ;
struct ldm_db {TYPE_2__ ph; } ;
struct g_provider {int mediasize; int sectorsize; int /*<<< orphan*/  name; TYPE_1__* geom; } ;
struct g_consumer {struct g_provider* provider; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_4__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int LDM_DB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int LDM_PH_MBRINDEX ; 
 struct g_consumer* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int* ldm_ph_off ; 
 int FUNC4 (struct g_consumer*,struct ldm_privhdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct g_consumer*,int,int*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,struct ldm_privhdr*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct ldm_privhdr*,int) ; 
 int FUNC8 (int*) ; 

__attribute__((used)) static int
FUNC9(struct ldm_db *db, struct g_consumer *cp, int is_gpt)
{
	struct g_consumer *cp2;
	struct g_provider *pp;
	struct ldm_privhdr hdr;
	uint64_t offset, last;
	int error, found, i;
	u_char *buf;

	pp = cp->provider;
	if (is_gpt) {
		/*
		 * The last LBA is used in several checks below, for the
		 * GPT case it should be calculated relative to the whole
		 * disk.
		 */
		cp2 = FUNC2(&pp->geom->consumer);
		last =
		    cp2->provider->mediasize / cp2->provider->sectorsize - 1;
	} else
		last = pp->mediasize / pp->sectorsize - 1;
	for (found = 0, i = is_gpt; i < FUNC8(ldm_ph_off); i++) {
		offset = ldm_ph_off[i];
		/*
		 * In the GPT case consumer is attached to the LDM metadata
		 * partition and we don't need add db_offset.
		 */
		if (!is_gpt)
			offset += db->ph.db_offset;
		if (i == LDM_PH_MBRINDEX) {
			/*
			 * Prepare to errors and setup new base offset
			 * to read backup private headers. Assume that LDM
			 * database is in the last 1Mbyte area.
			 */
			db->ph.db_offset = last - LDM_DB_SIZE;
		}
		buf = FUNC5(cp, offset * pp->sectorsize, &error);
		if (buf == NULL) {
			FUNC0(1, "%s: failed to read private header "
			    "%d at LBA %ju", pp->name, i, (uintmax_t)offset);
			continue;
		}
		error = FUNC4(cp, &hdr, buf);
		if (error != 0) {
			FUNC0(1, "%s: failed to parse private "
			    "header %d", pp->name, i);
			FUNC1(buf, pp->sectorsize);
			FUNC3(buf);
			continue;
		}
		FUNC3(buf);
		if (hdr.start > last ||
		    hdr.start + hdr.size - 1 > last ||
		    (hdr.start + hdr.size - 1 > hdr.db_offset && !is_gpt) ||
		    hdr.db_size != LDM_DB_SIZE ||
		    hdr.db_offset + LDM_DB_SIZE - 1 > last ||
		    hdr.th_offset[0] >= LDM_DB_SIZE ||
		    hdr.th_offset[1] >= LDM_DB_SIZE ||
		    hdr.conf_size + hdr.log_size >= LDM_DB_SIZE) {
			FUNC0(1, "%s: invalid values in the "
			    "private header %d", pp->name, i);
			FUNC0(2, "%s: start: %jd, size: %jd, "
			    "db_offset: %jd, db_size: %jd, th_offset0: %jd, "
			    "th_offset1: %jd, conf_size: %jd, log_size: %jd, "
			    "last: %jd", pp->name, hdr.start, hdr.size,
			    hdr.db_offset, hdr.db_size, hdr.th_offset[0],
			    hdr.th_offset[1], hdr.conf_size, hdr.log_size,
			    last);
			continue;
		}
		if (found != 0 && FUNC6(&db->ph, &hdr, sizeof(hdr)) != 0) {
			FUNC0(0, "%s: private headers are not equal",
			    pp->name);
			if (i > 1) {
				/*
				 * We have different headers in the LDM.
				 * We can not trust this metadata.
				 */
				FUNC0(0, "%s: refuse LDM metadata",
				    pp->name);
				return (EINVAL);
			}
			/*
			 * We already have read primary private header
			 * and it differs from this backup one.
			 * Prefer the backup header and save it.
			 */
			found = 0;
		}
		if (found == 0)
			FUNC7(&db->ph, &hdr, sizeof(hdr));
		found = 1;
	}
	if (found == 0) {
		FUNC0(1, "%s: valid LDM private header not found",
		    pp->name);
		return (ENXIO);
	}
	return (0);
}