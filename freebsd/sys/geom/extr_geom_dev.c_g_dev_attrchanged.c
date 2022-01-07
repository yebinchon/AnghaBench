
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int dummy; } ;


 int g_dev_set_media (struct g_consumer*) ;
 int g_dev_set_physpath (struct g_consumer*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
g_dev_attrchanged(struct g_consumer *cp, const char *attr)
{

 if (strcmp(attr, "GEOM::media") == 0) {
  g_dev_set_media(cp);
  return;
 }

 if (strcmp(attr, "GEOM::physpath") == 0) {
  g_dev_set_physpath(cp);
  return;
 }
}
