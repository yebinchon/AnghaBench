
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_raid_conf {int name; } ;


 int MIN (int ,int) ;
 int memcpy (int ,char*,int ) ;
 int memset (int ,int,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
nvidia_meta_put_name(struct nvidia_raid_conf *meta, char *buf)
{

 memset(meta->name, 0x20, 16);
 memcpy(meta->name, buf, MIN(strlen(buf), 16));
}
