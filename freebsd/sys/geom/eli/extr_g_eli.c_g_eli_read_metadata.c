
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_eli_metadata {int dummy; } ;
struct g_class {int dummy; } ;


 int g_eli_read_metadata_offset (struct g_class*,struct g_provider*,scalar_t__,struct g_eli_metadata*) ;

int
g_eli_read_metadata(struct g_class *mp, struct g_provider *pp,
    struct g_eli_metadata *md)
{

 return (g_eli_read_metadata_offset(mp, pp,
     pp->mediasize - pp->sectorsize, md));
}
