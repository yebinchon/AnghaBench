
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct sii_raid_conf {scalar_t__ checksum; } ;
struct g_provider {int sectorsize; int name; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int G_RAID_DEBUG (int,char*,int ,int) ;
 int M_MD_SII ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (char*,int ) ;
 int g_write_data (struct g_consumer*,scalar_t__,char*,int) ;
 char* malloc (int,int ,int) ;
 int memcpy (char*,struct sii_raid_conf*,int) ;

__attribute__((used)) static int
sii_meta_write(struct g_consumer *cp, struct sii_raid_conf *meta)
{
 struct g_provider *pp;
 char *buf;
 int error, i;
 uint16_t checksum, *ptr;

 pp = cp->provider;


 meta->checksum = 0;
 for (checksum = 0, ptr = (uint16_t *)meta, i = 0; i < 159; i++)
  checksum += *ptr++;
 meta->checksum -= checksum;


 buf = malloc(pp->sectorsize, M_MD_SII, M_WAITOK | M_ZERO);
 memcpy(buf, meta, sizeof(*meta));


 for (i = 0; i < 4; i++) {
  error = g_write_data(cp,
      pp->mediasize - (pp->sectorsize * (1 + 0x200 * i)),
      buf, pp->sectorsize);
  if (error != 0) {
   G_RAID_DEBUG(1, "Cannot write metadata to %s (error=%d).",
       pp->name, error);
   break;
  }
 }

 free(buf, M_MD_SII);
 return (error);
}
