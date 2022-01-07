
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_raid_conf {int dummy; } ;


 int M_MD_NVIDIA ;
 int M_WAITOK ;
 struct nvidia_raid_conf* malloc (int,int ,int ) ;
 int memcpy (struct nvidia_raid_conf*,struct nvidia_raid_conf*,int) ;

__attribute__((used)) static struct nvidia_raid_conf *
nvidia_meta_copy(struct nvidia_raid_conf *meta)
{
 struct nvidia_raid_conf *nmeta;

 nmeta = malloc(sizeof(*meta), M_MD_NVIDIA, M_WAITOK);
 memcpy(nmeta, meta, sizeof(*meta));
 return (nmeta);
}
