
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int sectorsize; int name; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int G_RAID_DEBUG (int,char*,int ,int) ;
 int M_MD_PROMISE ;
 int M_WAITOK ;
 int M_ZERO ;
 int PROMISE_MAX_SUBDISKS ;
 int PROMISE_META_OFFSET ;
 int free (char*,int ) ;
 int g_write_data (struct g_consumer*,scalar_t__,char*,int) ;
 char* malloc (int,int ,int) ;

__attribute__((used)) static int
promise_meta_erase(struct g_consumer *cp)
{
 struct g_provider *pp;
 char *buf;
 int error, subdisk;

 pp = cp->provider;
 buf = malloc(4 * pp->sectorsize, M_MD_PROMISE, M_WAITOK | M_ZERO);
 for (subdisk = 0; subdisk < PROMISE_MAX_SUBDISKS; subdisk++) {
  error = g_write_data(cp, pp->mediasize - pp->sectorsize *
      (63 - subdisk * PROMISE_META_OFFSET),
      buf, 4 * pp->sectorsize);
  if (error != 0) {
   G_RAID_DEBUG(1, "Cannot erase metadata on %s (error=%d).",
       pp->name, error);
  }
 }
 free(buf, M_MD_PROMISE);
 return (error);
}
