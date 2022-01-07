
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CloseSecret (int *) ;
 int LINE_LEN ;
 int LogWARN ;
 int MakeArgs (char*,char**,int ,int ) ;
 int * OpenSecret (int ) ;
 int PARSE_REDUCE ;
 int SECRETFILE ;
 int VECSIZE (char**) ;
 scalar_t__ fgets (char*,int,int *) ;
 int log_Printf (int ,char*,int ,int) ;
 int memset (char**,char,int) ;
 int rewind (int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 char* strrchr (char const*,char) ;

int
auth_SetPhoneList(const char *name, char *phone, int phonelen)
{
  FILE *fp;
  int n, lineno;
  char *vector[6], buff[LINE_LEN];
  const char *slash;

  fp = OpenSecret(SECRETFILE);
  if (fp != ((void*)0)) {
again:
    lineno = 0;
    while (fgets(buff, sizeof buff, fp)) {
      lineno++;
      if (buff[0] == '#')
        continue;
      buff[strlen(buff) - 1] = '\0';
      memset(vector, '\0', sizeof vector);
      if ((n = MakeArgs(buff, vector, VECSIZE(vector), PARSE_REDUCE)) < 0)
        log_Printf(LogWARN, "%s: %d: Invalid line\n", SECRETFILE, lineno);
      if (n < 5)
        continue;
      if (strcmp(vector[0], name) == 0) {
        CloseSecret(fp);
        if (*vector[4] == '\0')
          return 0;
        strncpy(phone, vector[4], phonelen - 1);
        phone[phonelen - 1] = '\0';
        return 1;
      }
    }

    if ((slash = strrchr(name, '\\')) != ((void*)0) && slash[1]) {

      name = slash + 1;
      rewind(fp);
      goto again;
    }

    CloseSecret(fp);
  }
  *phone = '\0';
  return 0;
}
