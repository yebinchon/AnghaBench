
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int LOG_ERR ;
 char* WSPACE ;
 int _PATH_DEV ;
 char* _PATH_FBTAB ;
 char* _PATH_LOGINDEVPERM ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int login_protect (char const*,char*,int,int ,int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,int ,int) ;
 char* strtok (char*,char*) ;
 int syslog (int ,char*,char const*,char*) ;

void
login_fbtab(char *tty, uid_t uid, gid_t gid)
{
    FILE *fp;
    char buf[BUFSIZ];
    char *devname;
    char *cp;
    int prot;
    const char *table;

    if ((fp = fopen(table = _PATH_FBTAB, "r")) == ((void*)0)
    && (fp = fopen(table = _PATH_LOGINDEVPERM, "r")) == ((void*)0))
 return;

    while (fgets(buf, sizeof(buf), fp)) {
 if ((cp = strchr(buf, '#')))
     *cp = 0;
 if ((cp = devname = strtok(buf, WSPACE)) == ((void*)0))
     continue;
 if (strncmp(devname, _PATH_DEV, sizeof _PATH_DEV - 1) != 0
        || (cp = strtok(((void*)0), WSPACE)) == ((void*)0)
        || *cp != '0'
        || sscanf(cp, "%o", &prot) == 0
        || prot == 0
        || (prot & 0777) != prot
        || (cp = strtok(((void*)0), WSPACE)) == ((void*)0)) {
     syslog(LOG_ERR, "%s: bad entry: %s", table, cp ? cp : "(null)");
     continue;
 }
 if (strcmp(devname + 5, tty) == 0) {
     for (cp = strtok(cp, ":"); cp; cp = strtok(((void*)0), ":")) {
  login_protect(table, cp, prot, uid, gid);
     }
 }
    }
    fclose(fp);
}
