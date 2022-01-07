
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXLINE ;
 int connected ;
 int creat (char*,int) ;
 int fgets (char*,int,int ) ;
 int getusage (char*) ;
 char* hostname ;
 int makeargv (char*) ;
 int margc ;
 char** margv ;
 char* mode ;
 int peer ;
 int port ;
 int printf (char*,...) ;
 int recvfile (int ,int ,int,char*,char*) ;
 int setpeer0 (char*,int *) ;
 int stdin ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 char* tail (char*) ;
 scalar_t__ verbose ;
 int warn (char*,char*) ;

__attribute__((used)) static void
get(int argc, char *argv[])
{
 int fd;
 int n;
 char *cp;
 char *src;
 char line[MAXLINE];

 if (argc < 2) {
  strcpy(line, "get ");
  printf("(files) ");
  fgets(&line[strlen(line)], sizeof line - strlen(line), stdin);
  makeargv(line);
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
  getusage(argv[0]);
  return;
 }
 if (!connected) {
  for (n = 1; n < argc ; n++)
   if (strrchr(argv[n], ':') == 0) {
    printf("No remote host specified and "
        "no host given for file '%s'\n", argv[n]);
    getusage(argv[0]);
    return;
   }
 }
 for (n = 1; n < argc ; n++) {
  src = strrchr(argv[n], ':');
  if (src == ((void*)0))
   src = argv[n];
  else {
   char *lcp;

   *src++ = 0;
   lcp = argv[n];
   if (lcp[0] == '[' && lcp[strlen(lcp) - 1] == ']') {
    lcp[strlen(lcp) - 1] = '\0';
    lcp++;
   }
   setpeer0(lcp, ((void*)0));
   if (!connected)
    continue;
  }
  if (argc < 4) {
   cp = argc == 3 ? argv[2] : tail(src);
   fd = creat(cp, 0644);
   if (fd < 0) {
    warn("%s", cp);
    return;
   }
   if (verbose)
    printf("getting from %s:%s to %s [%s]\n",
        hostname, src, cp, mode);
   recvfile(peer, port, fd, src, mode);
   break;
  }
  cp = tail(src);
  fd = creat(cp, 0644);
  if (fd < 0) {
   warn("%s", cp);
   continue;
  }
  if (verbose)
   printf("getting from %s:%s to %s [%s]\n",
       hostname, src, cp, mode);
  recvfile(peer, port, fd, src, mode);
 }
}
