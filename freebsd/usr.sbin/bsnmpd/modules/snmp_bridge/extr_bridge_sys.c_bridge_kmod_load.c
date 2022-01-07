
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_stat {int version; int name; } ;


 int LOG_ERR ;
 int kldfirstmod (int) ;
 scalar_t__ kldload (char const*) ;
 int kldnext (int) ;
 int modfnext (int) ;
 scalar_t__ modstat (int,struct module_stat*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int syslog (int ,char*,char const*) ;

int
bridge_kmod_load(void)
{
 int fileid, modid;
 const char mod_name[] = "if_bridge";
 struct module_stat mstat;


 mstat.version = sizeof(struct module_stat);
 for (fileid = kldnext(0); fileid > 0; fileid = kldnext(fileid)) {

  for (modid = kldfirstmod(fileid); modid > 0;
   modid = modfnext(modid)) {

   if (modstat(modid, &mstat) < 0)
    continue;

   if (strcmp(mod_name, mstat.name) == 0)
    return (0);
  }
 }


 if (kldload(mod_name) < 0) {
  syslog(LOG_ERR, "failed to load %s kernel module", mod_name);
  return (-1);
 }

 return (1);
}
