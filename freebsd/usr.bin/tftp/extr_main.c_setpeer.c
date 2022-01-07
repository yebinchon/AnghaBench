
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXLINE ;
 int fgets (char*,int,int ) ;
 int makeargv (char*) ;
 int margc ;
 char** margv ;
 char* port ;
 int printf (char*,...) ;
 int setpeer0 (char*,char*) ;
 int stdin ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
setpeer(int argc, char *argv[])
{
 char line[MAXLINE];

 if (argc < 2) {
  strcpy(line, "Connect ");
  printf("(to) ");
  fgets(&line[strlen(line)], sizeof line - strlen(line), stdin);
  makeargv(line);
  argc = margc;
  argv = margv;
 }
 if ((argc < 2) || (argc > 3)) {
  printf("usage: %s [host [port]]\n", argv[0]);
  return;
 }
 if (argc == 3) {
  port = argv[2];
  setpeer0(argv[1], argv[2]);
 } else
  setpeer0(argv[1], ((void*)0));
}
