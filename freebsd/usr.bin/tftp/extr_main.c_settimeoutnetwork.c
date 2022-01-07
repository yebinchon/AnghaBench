
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXLINE ;
 int atoi (char*) ;
 int fgets (char*,int,int ) ;
 int makeargv (char*) ;
 int margc ;
 char** margv ;
 int maxtimeouts ;
 int printf (char*,...) ;
 int settimeouts (int ,int,int ) ;
 int stdin ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int timeoutpacket ;

__attribute__((used)) static void
settimeoutnetwork(int argc, char *argv[])
{
 int t;
 char line[MAXLINE];

 if (argc < 2) {
  strcpy(line, "Network timeout ");
  printf("(value) ");
  fgets(&line[strlen(line)], sizeof line - strlen(line), stdin);
  makeargv(line);
  argc = margc;
  argv = margv;
 }
 if (argc != 2) {
  printf("usage: %s value\n", argv[0]);
  return;
 }
 t = atoi(argv[1]);
 if (t < 0) {
  printf("%s: bad value\n", argv[1]);
  return;
 }

 settimeouts(timeoutpacket, t, maxtimeouts);
}
