
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sname ;


 int NG_NODESIZ ;
 scalar_t__ NG_PATHSIZ ;
 int NgMkSockNode (char*,int *,int *) ;
 int NgSetDebug (int ) ;
 int SOL_SOCKET ;
 int SORCVBUF_SIZE ;
 int SO_RCVBUF ;
 int atoi (int ) ;
 int close (int ) ;
 int cs ;
 int err (int,char*) ;
 int execute_command (int,char**) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int help () ;
 char* ng_path ;
 int optarg ;
 scalar_t__ optind ;
 int setsockopt (int ,int ,int ,int*,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strlen (char*) ;

int
main(int argc, char **argv)
{
 int c;
 char sname[NG_NODESIZ];
 int rcvbuf = SORCVBUF_SIZE;


 while ((c = getopt(argc, argv, "d:")) != -1) {
  switch (c) {
  case 'd':
   NgSetDebug(atoi(optarg));
   break;
  }
 }

 argc -= optind;
 argv += optind;
 ng_path = argv[0];
 if (ng_path == ((void*)0) || (strlen(ng_path) > NG_PATHSIZ))
  help();
 argc--;
 argv++;


 snprintf(sname, sizeof(sname), "flowctl%i", getpid());

 if (NgMkSockNode(sname, &cs, ((void*)0)) == -1)
  err(1, "NgMkSockNode");


 if (setsockopt(cs, SOL_SOCKET, SO_RCVBUF, &rcvbuf, sizeof(int)) == -1)
  err(1, "setsockopt(SOL_SOCKET, SO_RCVBUF)");


 execute_command(argc, argv);

 close(cs);

 exit(0);
}
