
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct ldm_privhdr {void* log_size; void* conf_size; void** th_offset; void* db_size; void* db_offset; void* size; void* start; int dg_name; int dg_guid; int disk_guid; } ;
struct g_consumer {TYPE_1__* provider; } ;
struct TYPE_2__ {int name; } ;


 int ENXIO ;
 int LDM_DEBUG (int ,char*,int ,int,int) ;
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
 int be32dec (int const*) ;
 void* be64dec (int const*) ;
 int memset (struct ldm_privhdr*,int ,int) ;
 int parse_uuid (int const*,int *) ;
 int strncpy (int ,int const*,int) ;

__attribute__((used)) static int
ldm_privhdr_parse(struct g_consumer *cp, struct ldm_privhdr *hdr,
    const u_char *buf)
{
 uint32_t version;
 int error;

 memset(hdr, 0, sizeof(*hdr));
 version = be32dec(buf + LDM_PH_VERSION_OFF);
 if (version != LDM_VERSION_2K &&
     version != LDM_VERSION_VISTA) {
  LDM_DEBUG(0, "%s: unsupported LDM version %u.%u",
      cp->provider->name, version >> 16,
      version & 0xFFFF);
  return (ENXIO);
 }
 error = parse_uuid(buf + LDM_PH_DISKGUID_OFF, &hdr->disk_guid);
 if (error != 0)
  return (error);
 error = parse_uuid(buf + LDM_PH_DGGUID_OFF, &hdr->dg_guid);
 if (error != 0)
  return (error);
 strncpy(hdr->dg_name, buf + LDM_PH_DGNAME_OFF, sizeof(hdr->dg_name));
 hdr->start = be64dec(buf + LDM_PH_START_OFF);
 hdr->size = be64dec(buf + LDM_PH_SIZE_OFF);
 hdr->db_offset = be64dec(buf + LDM_PH_DB_OFF);
 hdr->db_size = be64dec(buf + LDM_PH_DBSIZE_OFF);
 hdr->th_offset[0] = be64dec(buf + LDM_PH_TH1_OFF);
 hdr->th_offset[1] = be64dec(buf + LDM_PH_TH2_OFF);
 hdr->conf_size = be64dec(buf + LDM_PH_CONFSIZE_OFF);
 hdr->log_size = be64dec(buf + LDM_PH_LOGSIZE_OFF);
 return (0);
}
