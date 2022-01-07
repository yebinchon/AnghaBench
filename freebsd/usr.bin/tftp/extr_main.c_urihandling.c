
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* m_mode; int * m_name; } ;


 int ARG_MAX ;
 int MAXLINE ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int get (int ,int ) ;
 int makeargv (char*) ;
 int margc ;
 int margv ;
 char* mode ;
 TYPE_1__* modes ;
 int setpeer0 (char*,int *) ;
 int settftpmode (char*) ;
 int sprintf (char*,char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int *,char const*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
urihandling(char *URI)
{
 char uri[ARG_MAX];
 char *host = ((void*)0);
 char *path = ((void*)0);
 char *opts = ((void*)0);
 const char *tmode = "octet";
 char *s;
 char line[MAXLINE];
 int i;

 strlcpy(uri, URI, ARG_MAX);
 host = uri + 7;

 if ((s = strchr(host, '/')) == ((void*)0)) {
  fprintf(stderr,
      "Invalid URI: Couldn't find / after hostname\n");
  exit(1);
 }
 *s = '\0';
 path = s + 1;

 if ((s = strchr(path, ';')) != ((void*)0)) {
  *s = '\0';
  opts = s + 1;

  if (strncmp(opts, "mode=", 5) == 0) {
   tmode = opts;
   tmode += 5;

   for (i = 0; modes[i].m_name != ((void*)0); i++) {
    if (strcmp(modes[i].m_name, tmode) == 0)
     break;
   }
   if (modes[i].m_name == ((void*)0)) {
    fprintf(stderr, "Invalid mode: '%s'\n", mode);
    exit(1);
   }
   settftpmode(modes[i].m_mode);
  }
 } else {
  settftpmode("octet");
 }

 setpeer0(host, ((void*)0));

 sprintf(line, "get %s", path);
 makeargv(line);
 get(margc, margv);
}
