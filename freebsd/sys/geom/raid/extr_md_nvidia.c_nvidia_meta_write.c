
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nvidia_raid_conf {int config_size; scalar_t__ checksum; } ;
struct g_provider {int sectorsize; int name; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int G_RAID_DEBUG (int,char*,int ,int) ;
 int M_MD_NVIDIA ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (char*,int ) ;
 int g_write_data (struct g_consumer*,scalar_t__,char*,int) ;
 char* malloc (int,int ,int) ;
 int memcpy (char*,struct nvidia_raid_conf*,int) ;

__attribute__((used)) static int
nvidia_meta_write(struct g_consumer *cp, struct nvidia_raid_conf *meta)
{
 struct g_provider *pp;
 char *buf;
 int error, i;
 uint32_t checksum, *ptr;

 pp = cp->provider;


 meta->checksum = 0;
 for (checksum = 0, ptr = (uint32_t *)meta,
     i = 0; i < meta->config_size; i++)
  checksum += *ptr++;
 meta->checksum -= checksum;


 buf = malloc(pp->sectorsize, M_MD_NVIDIA, M_WAITOK | M_ZERO);
 memcpy(buf, meta, sizeof(*meta));


 error = g_write_data(cp,
     pp->mediasize - 2 * pp->sectorsize, buf, pp->sectorsize);
 if (error != 0) {
  G_RAID_DEBUG(1, "Cannot write metadata to %s (error=%d).",
      pp->name, error);
 }

 free(buf, M_MD_NVIDIA);
 return (error);
}
