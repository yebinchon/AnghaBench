
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle {int dummy; } ;
typedef int FILE ;


 int CloseSecret (int *) ;
 scalar_t__ Enabled (struct bundle*,int ) ;
 int LINE_LEN ;
 int LogWARN ;
 int MakeArgs (char*,char**,int ,int ) ;
 int OPT_PASSWDAUTH ;
 int * OpenSecret (int ) ;
 int PARSE_REDUCE ;
 int SECRETFILE ;
 int VECSIZE (char**) ;
 int auth_CheckPasswd (char const*,char*,char const*) ;
 scalar_t__ fgets (char*,int,int *) ;
 int log_Printf (int ,char*,int ,int) ;
 int memset (char**,char,int) ;
 int rewind (int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char*) ;
 char* strrchr (char const*,char) ;

int
auth_Validate(struct bundle *bundle, const char *name, const char *key)
{


  FILE *fp;
  int n, lineno;
  char *vector[5], buff[LINE_LEN];
  const char *slash;

  fp = OpenSecret(SECRETFILE);
again:
  lineno = 0;
  if (fp != ((void*)0)) {
    while (fgets(buff, sizeof buff, fp)) {
      lineno++;
      if (buff[0] == '#')
        continue;
      buff[strlen(buff) - 1] = 0;
      memset(vector, '\0', sizeof vector);
      if ((n = MakeArgs(buff, vector, VECSIZE(vector), PARSE_REDUCE)) < 0)
        log_Printf(LogWARN, "%s: %d: Invalid line\n", SECRETFILE, lineno);
      if (n < 2)
        continue;
      if (strcmp(vector[0], name) == 0) {
        CloseSecret(fp);
        return auth_CheckPasswd(name, vector[1], key);
      }
    }
  }

  if ((slash = strrchr(name, '\\')) != ((void*)0) && slash[1]) {

    name = slash + 1;
    if (fp != ((void*)0)) {
      rewind(fp);
      goto again;
    }
  }

  if (fp != ((void*)0))
    CloseSecret(fp);


  if (Enabled(bundle, OPT_PASSWDAUTH))
    return auth_CheckPasswd(name, "*", key);


  return 0;
}
