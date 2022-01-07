
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int sectorsize; int name; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int G_RAID_DEBUG (int,char*,int ,int) ;
 int M_MD_SII ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (char*,int ) ;
 int g_write_data (struct g_consumer*,scalar_t__,char*,int) ;
 char* malloc (int,int ,int) ;

__attribute__((used)) static int
sii_meta_erase(struct g_consumer *cp)
{
 struct g_provider *pp;
 char *buf;
 int error, i;

 pp = cp->provider;
 buf = malloc(pp->sectorsize, M_MD_SII, M_WAITOK | M_ZERO);

 for (i = 0; i < 4; i++) {
  error = g_write_data(cp,
      pp->mediasize - (pp->sectorsize * (1 + 0x200 * i)),
      buf, pp->sectorsize);
  if (error != 0) {
   G_RAID_DEBUG(1, "Cannot erase metadata on %s (error=%d).",
       pp->name, error);
  }
 }
 free(buf, M_MD_SII);
 return (error);
}
