
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int LOG_ERR ;
 scalar_t__ getparent (char const*,char*) ;
 int * ifnets ;
 int nifnets ;
 scalar_t__ strcasecmp (int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int syslog (int ,char*,char const*,...) ;

__attribute__((used)) static int
checkifnet(const char *ifname, int complain)
{
 char parent[256];
 int i;

 if (getparent(ifname, parent) < 0) {
  if (complain)
   syslog(LOG_ERR,
      "%s: no pointer to parent interface: %m", ifname);
  return 0;
 }

 for (i = 0; i < nifnets; i++)
  if (strcasecmp(ifnets[i], "any") == 0 ||
      strcmp(ifnets[i], parent) == 0)
   return 1;
 syslog(LOG_DEBUG, "%s: parent %s not being monitored", ifname, parent);
 return 0;
}
