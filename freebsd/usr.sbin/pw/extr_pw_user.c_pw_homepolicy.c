
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userconf {char* home; } ;
typedef int home ;


 int EX_CONFIG ;
 int errx (int ,char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static char *
pw_homepolicy(struct userconf * cnf, char *homedir, const char *user)
{
 static char home[128];

 if (homedir)
  return (homedir);

 if (cnf->home == ((void*)0) || *cnf->home == '\0')
  errx(EX_CONFIG, "no base home directory set");
 snprintf(home, sizeof(home), "%s/%s", cnf->home, user);

 return (home);
}
