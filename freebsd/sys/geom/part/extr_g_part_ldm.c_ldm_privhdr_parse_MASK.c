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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct ldm_privhdr {void* log_size; void* conf_size; void** th_offset; void* db_size; void* db_offset; void* size; void* start; int /*<<< orphan*/  dg_name; int /*<<< orphan*/  dg_guid; int /*<<< orphan*/  disk_guid; } ;
struct g_consumer {TYPE_1__* provider; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int LDM_PH_CONFSIZE_OFF ; 
 int LDM_PH_DBSIZE_OFF ; 
 int LDM_PH_DB_OFF ; 
 int LDM_PH_DGGUID_OFF ; 
 int LDM_PH_DGNAME_OFF ; 
 int LDM_PH_DISKGUID_OFF ; 
 int LDM_PH_LOGSIZE_OFF ; 
 int LDM_PH_SIZE_OFF ; 
 int LDM_PH_START_OFF ; 
 int LDM_PH_TH1_OFF ; 
 int LDM_PH_TH2_OFF ; 
 int LDM_PH_VERSION_OFF ; 
 int LDM_VERSION_2K ; 
 int LDM_VERSION_VISTA ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ldm_privhdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int
FUNC6(struct g_consumer *cp, struct ldm_privhdr *hdr,
    const u_char *buf)
{
	uint32_t version;
	int error;

	FUNC3(hdr, 0, sizeof(*hdr));
	version = FUNC1(buf + LDM_PH_VERSION_OFF);
	if (version != LDM_VERSION_2K &&
	    version != LDM_VERSION_VISTA) {
		FUNC0(0, "%s: unsupported LDM version %u.%u",
		    cp->provider->name, version >> 16,
		    version & 0xFFFF);
		return (ENXIO);
	}
	error = FUNC4(buf + LDM_PH_DISKGUID_OFF, &hdr->disk_guid);
	if (error != 0)
		return (error);
	error = FUNC4(buf + LDM_PH_DGGUID_OFF, &hdr->dg_guid);
	if (error != 0)
		return (error);
	FUNC5(hdr->dg_name, buf + LDM_PH_DGNAME_OFF, sizeof(hdr->dg_name));
	hdr->start = FUNC2(buf + LDM_PH_START_OFF);
	hdr->size = FUNC2(buf + LDM_PH_SIZE_OFF);
	hdr->db_offset = FUNC2(buf + LDM_PH_DB_OFF);
	hdr->db_size = FUNC2(buf + LDM_PH_DBSIZE_OFF);
	hdr->th_offset[0] = FUNC2(buf + LDM_PH_TH1_OFF);
	hdr->th_offset[1] = FUNC2(buf + LDM_PH_TH2_OFF);
	hdr->conf_size = FUNC2(buf + LDM_PH_CONFSIZE_OFF);
	hdr->log_size = FUNC2(buf + LDM_PH_LOGSIZE_OFF);
	return (0);
}