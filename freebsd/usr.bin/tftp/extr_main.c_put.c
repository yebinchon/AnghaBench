
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_2__ {int o_request; } ;


 int MAXLINE ;
 size_t OPT_TSIZE ;
 int O_RDONLY ;
 int asprintf (int *,char*,int ) ;
 int close (int) ;
 int connected ;
 int fgets (char*,int,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 char* hostname ;
 int makeargv (char*) ;
 int margc ;
 char** margv ;
 char* mode ;
 int open (char*,int ) ;
 TYPE_1__* options ;
 int peer ;
 int port ;
 int printf (char*,...) ;
 int putusage (char*) ;
 int setpeer0 (char*,int *) ;
 int stdin ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 char* tail (char*) ;
 scalar_t__ verbose ;
 int warn (char*,char*) ;
 int xmitfile (int ,int ,int,char*,char*) ;

__attribute__((used)) static void
put(int argc, char *argv[])
{
 int fd;
 int n;
 char *cp, *targ;
 char line[MAXLINE];
 struct stat sb;

 if (argc < 2) {
  strcpy(line, "send ");
  printf("(file) ");
  fgets(&line[strlen(line)], sizeof line - strlen(line), stdin);
  makeargv(line);
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
  putusage(argv[0]);
  return;
 }
 targ = argv[argc - 1];
 if (strrchr(argv[argc - 1], ':')) {
  char *lcp;

  for (n = 1; n < argc - 1; n++)
   if (strchr(argv[n], ':')) {
    putusage(argv[0]);
    return;
   }
  lcp = argv[argc - 1];
  targ = strrchr(lcp, ':');
  *targ++ = 0;
  if (lcp[0] == '[' && lcp[strlen(lcp) - 1] == ']') {
   lcp[strlen(lcp) - 1] = '\0';
   lcp++;
  }
  setpeer0(lcp, ((void*)0));
 }
 if (!connected) {
  printf("No target machine specified.\n");
  return;
 }
 if (argc < 4) {
  cp = argc == 2 ? tail(targ) : argv[1];
  fd = open(cp, O_RDONLY);
  if (fd < 0) {
   warn("%s", cp);
   return;
  }

  if (fstat(fd, &sb) < 0) {
   warn("%s", cp);
   close(fd);
   return;
  }
  asprintf(&options[OPT_TSIZE].o_request, "%ju", sb.st_size);

  if (verbose)
   printf("putting %s to %s:%s [%s]\n",
       cp, hostname, targ, mode);
  xmitfile(peer, port, fd, targ, mode);
  close(fd);
  return;
 }


 cp = strchr(targ, '\0');
 *cp++ = '/';
 for (n = 1; n < argc - 1; n++) {
  strcpy(cp, tail(argv[n]));
  fd = open(argv[n], O_RDONLY);
  if (fd < 0) {
   warn("%s", argv[n]);
   continue;
  }

  if (fstat(fd, &sb) < 0) {
   warn("%s", argv[n]);
   continue;
  }
  asprintf(&options[OPT_TSIZE].o_request, "%ju", sb.st_size);

  if (verbose)
   printf("putting %s to %s:%s [%s]\n",
       argv[n], hostname, targ, mode);
  xmitfile(peer, port, fd, targ, mode);
 }
}
