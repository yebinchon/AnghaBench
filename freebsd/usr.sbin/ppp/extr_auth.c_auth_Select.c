
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_7__ {scalar_t__ valid; TYPE_4__ ip; TYPE_1__ mask; } ;
struct TYPE_6__ {int ipcp; } ;
struct bundle {TYPE_3__ radius; TYPE_2__ ncp; } ;
typedef int FILE ;


 int CloseSecret (int *) ;
 scalar_t__ INADDR_NONE ;
 int LINE_LEN ;
 int LogWARN ;
 int MakeArgs (char*,char**,int ,int ) ;
 int * OpenSecret (int ) ;
 int PARSE_REDUCE ;
 scalar_t__ RADIUS_INADDR_POOL ;
 int SECRETFILE ;
 int VECSIZE (char**) ;
 int bundle_SetLabel (struct bundle*,char*) ;
 scalar_t__ fgets (char*,int,int *) ;
 int ipcp_Setup (int *,scalar_t__) ;
 int ipcp_UseHisIPaddr (struct bundle*,TYPE_4__) ;
 int ipcp_UseHisaddr (struct bundle*,char*,int) ;
 int log_Printf (int ,char*,int ,int) ;
 int memset (char**,char,int) ;
 int rewind (int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char*) ;
 char* strrchr (char const*,char) ;

int
auth_Select(struct bundle *bundle, const char *name)
{
  FILE *fp;
  int n, lineno;
  char *vector[5], buff[LINE_LEN];
  const char *slash;

  if (*name == '\0') {
    ipcp_Setup(&bundle->ncp.ipcp, INADDR_NONE);
    return 1;
  }


  if (bundle->radius.valid && bundle->radius.ip.s_addr != INADDR_NONE &&
 bundle->radius.ip.s_addr != RADIUS_INADDR_POOL) {

    if (!ipcp_UseHisIPaddr(bundle, bundle->radius.ip))
      return 0;
    ipcp_Setup(&bundle->ncp.ipcp, bundle->radius.mask.s_addr);

  }


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
      if (n < 2)
        continue;
      if (strcmp(vector[0], name) == 0) {
        CloseSecret(fp);

        if (!bundle->radius.valid || bundle->radius.ip.s_addr == INADDR_NONE) {

          if (n > 2 && *vector[2] && strcmp(vector[2], "*") &&
              !ipcp_UseHisaddr(bundle, vector[2], 1))
            return 0;
          ipcp_Setup(&bundle->ncp.ipcp, INADDR_NONE);

        }

        if (n > 3 && *vector[3] && strcmp(vector[3], "*"))
          bundle_SetLabel(bundle, vector[3]);
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



  ipcp_Setup(&bundle->ncp.ipcp, INADDR_NONE);
  return 1;
}
