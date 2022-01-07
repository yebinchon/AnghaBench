
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii_raid_conf {int dummy; } ;


 int M_MD_SII ;
 int M_WAITOK ;
 struct sii_raid_conf* malloc (int,int ,int ) ;
 int memcpy (struct sii_raid_conf*,struct sii_raid_conf*,int) ;

__attribute__((used)) static struct sii_raid_conf *
sii_meta_copy(struct sii_raid_conf *meta)
{
 struct sii_raid_conf *nmeta;

 nmeta = malloc(sizeof(*meta), M_MD_SII, M_WAITOK);
 memcpy(nmeta, meta, sizeof(*meta));
 return (nmeta);
}
