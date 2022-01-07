
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_conf {int config_size; } ;


 int M_MD_INTEL ;
 int M_WAITOK ;
 struct intel_raid_conf* malloc (int ,int ,int ) ;
 int memcpy (struct intel_raid_conf*,struct intel_raid_conf*,int ) ;

__attribute__((used)) static struct intel_raid_conf *
intel_meta_copy(struct intel_raid_conf *meta)
{
 struct intel_raid_conf *nmeta;

 nmeta = malloc(meta->config_size, M_MD_INTEL, M_WAITOK);
 memcpy(nmeta, meta, meta->config_size);
 return (nmeta);
}
