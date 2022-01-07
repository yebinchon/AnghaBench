
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jmicron_raid_conf {int dummy; } ;


 int M_MD_JMICRON ;
 int M_WAITOK ;
 struct jmicron_raid_conf* malloc (int,int ,int ) ;
 int memcpy (struct jmicron_raid_conf*,struct jmicron_raid_conf*,int) ;

__attribute__((used)) static struct jmicron_raid_conf *
jmicron_meta_copy(struct jmicron_raid_conf *meta)
{
 struct jmicron_raid_conf *nmeta;

 nmeta = malloc(sizeof(*meta), M_MD_JMICRON, M_WAITOK);
 memcpy(nmeta, meta, sizeof(*meta));
 return (nmeta);
}
