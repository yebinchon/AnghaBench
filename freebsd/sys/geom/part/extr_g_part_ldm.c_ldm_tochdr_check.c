
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int u_char ;
struct ldm_tochdr {scalar_t__ conf_offset; scalar_t__ log_offset; } ;
struct TYPE_2__ {scalar_t__ db_offset; scalar_t__* th_offset; scalar_t__ conf_size; scalar_t__ log_size; } ;
struct ldm_db {int th; TYPE_1__ ph; } ;
struct g_provider {scalar_t__ sectorsize; int name; } ;
struct g_consumer {struct g_provider* provider; } ;
typedef int hdr ;


 int ENXIO ;
 scalar_t__ LDM_DB_SIZE ;
 int LDM_DEBUG (int,char*,int ,...) ;
 int LDM_DUMP (int *,scalar_t__) ;
 int LDM_TH_CONFSIZE_OFF ;
 int LDM_TH_CONF_OFF ;
 int LDM_TH_COUNT ;
 int LDM_TH_LOGSIZE_OFF ;
 int LDM_TH_LOG_OFF ;
 int LDM_TH_NAME1 ;
 int LDM_TH_NAME1_OFF ;
 int LDM_TH_NAME2 ;
 int LDM_TH_NAME2_OFF ;
 int LDM_TH_SIGN ;
 void* be64dec (int *) ;
 int g_free (int *) ;
 int * g_read_data (struct g_consumer*,scalar_t__,scalar_t__,int*) ;
 scalar_t__ memcmp (int *,int ,int ) ;
 int memcpy (int *,struct ldm_tochdr*,int) ;
 int strlen (int ) ;

__attribute__((used)) static int
ldm_tochdr_check(struct ldm_db *db, struct g_consumer *cp)
{
 struct g_provider *pp;
 struct ldm_tochdr hdr;
 uint64_t offset, conf_size, log_size;
 int error, found, i;
 u_char *buf;

 pp = cp->provider;
 for (i = 0, found = 0; i < LDM_TH_COUNT; i++) {
  offset = db->ph.db_offset + db->ph.th_offset[i];
  buf = g_read_data(cp,
      offset * pp->sectorsize, pp->sectorsize, &error);
  if (buf == ((void*)0)) {
   LDM_DEBUG(1, "%s: failed to read TOC header "
       "at LBA %ju", pp->name, (uintmax_t)offset);
   continue;
  }
  if (memcmp(buf, LDM_TH_SIGN, strlen(LDM_TH_SIGN)) != 0 ||
      memcmp(buf + LDM_TH_NAME1_OFF, LDM_TH_NAME1,
      strlen(LDM_TH_NAME1)) != 0 ||
      memcmp(buf + LDM_TH_NAME2_OFF, LDM_TH_NAME2,
      strlen(LDM_TH_NAME2)) != 0) {
   LDM_DEBUG(1, "%s: failed to parse TOC header "
       "at LBA %ju", pp->name, (uintmax_t)offset);
   LDM_DUMP(buf, pp->sectorsize);
   g_free(buf);
   continue;
  }
  hdr.conf_offset = be64dec(buf + LDM_TH_CONF_OFF);
  hdr.log_offset = be64dec(buf + LDM_TH_LOG_OFF);
  conf_size = be64dec(buf + LDM_TH_CONFSIZE_OFF);
  log_size = be64dec(buf + LDM_TH_LOGSIZE_OFF);
  if (conf_size != db->ph.conf_size ||
      hdr.conf_offset + conf_size >= LDM_DB_SIZE ||
      log_size != db->ph.log_size ||
      hdr.log_offset + log_size >= LDM_DB_SIZE) {
   LDM_DEBUG(1, "%s: invalid values in the "
       "TOC header at LBA %ju", pp->name,
       (uintmax_t)offset);
   LDM_DUMP(buf, pp->sectorsize);
   g_free(buf);
   continue;
  }
  g_free(buf);
  if (found == 0)
   memcpy(&db->th, &hdr, sizeof(hdr));
  found = 1;
 }
 if (found == 0) {
  LDM_DEBUG(0, "%s: valid LDM TOC header not found.",
      pp->name);
  return (ENXIO);
 }
 return (0);
}
