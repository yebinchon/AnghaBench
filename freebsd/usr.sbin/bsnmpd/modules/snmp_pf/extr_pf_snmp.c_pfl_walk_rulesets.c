
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct pfioc_ruleset {char* path; scalar_t__ nr; char* name; } ;
typedef int prs ;
typedef int newpath ;


 int DIOCGETRULESET ;
 int DIOCGETRULESETS ;
 int LOG_ERR ;
 int MAXPATHLEN ;
 int PF_RESERVED_ANCHOR ;
 int bzero (struct pfioc_ruleset*,int) ;
 int dev ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct pfioc_ruleset*) ;
 scalar_t__ pfl_scan_ruleset (char const*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strerror (int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int
pfl_walk_rulesets(const char *path)
{
 struct pfioc_ruleset prs;
 char newpath[MAXPATHLEN];
 u_int32_t nr, i;

 if (pfl_scan_ruleset(path))
  goto err;

 bzero(&prs, sizeof(prs));
 strlcpy(prs.path, path, sizeof(prs.path));
 if (ioctl(dev, DIOCGETRULESETS, &prs)) {
  syslog(LOG_ERR, "pfl_walk_rulesets: ioctl(DIOCGETRULESETS): %s",
      strerror(errno));
  goto err;
 }

 for (nr = prs.nr, i = 0; i < nr; i++) {
  prs.nr = i;
  if (ioctl(dev, DIOCGETRULESET, &prs)) {
   syslog(LOG_ERR, "pfl_walk_rulesets: ioctl(DIOCGETRULESET):"
       " %s", strerror(errno));
   goto err;
  }

  if (strcmp(prs.name, PF_RESERVED_ANCHOR) == 0)
   continue;

  strlcpy(newpath, path, sizeof(newpath));
  if (path[0])
   strlcat(newpath, "/", sizeof(newpath));

  strlcat(newpath, prs.name, sizeof(newpath));
  if (pfl_walk_rulesets(newpath))
   goto err;
 }

 return (0);

err:
 return (-1);
}
