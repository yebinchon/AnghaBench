
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii_raid_conf {int name; } ;


 int strncpy (char*,int ,int) ;

__attribute__((used)) static void
sii_meta_get_name(struct sii_raid_conf *meta, char *buf)
{
 int i;

 strncpy(buf, meta->name, 16);
 buf[16] = 0;
 for (i = 15; i >= 0; i--) {
  if (buf[i] > 0x20)
   break;
  buf[i] = 0;
 }
}
