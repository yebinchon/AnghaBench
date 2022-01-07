
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_mixer {int modify_counter; int dev; int name; } ;
struct TYPE_3__ {int modify_counter; int name; int id; } ;
typedef TYPE_1__ mixer_info ;


 int bzero (void*,int) ;
 int device_get_desc (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
mixer_mixerinfo(struct snd_mixer *m, mixer_info *mi)
{
 bzero((void *)mi, sizeof(*mi));
 strlcpy(mi->id, m->name, sizeof(mi->id));
 strlcpy(mi->name, device_get_desc(m->dev), sizeof(mi->name));
 mi->modify_counter = m->modify_counter;
}
