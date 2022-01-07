
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ngm_connect {int peerhook; int ourhook; int path; } ;
typedef int ngc ;
typedef int fd_set ;
typedef int buf ;


 int BUF_SIZE ;
 char* DEFAULT_HOOKNAME ;
 int EX_OSERR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int NGM_CONNECT ;
 int NGM_GENERIC_COOKIE ;
 char* NG_SOCK_HOOK_NAME ;
 scalar_t__ NgMkSockNode (int *,int*,int*) ;
 int NgRecvData (int,char*,int,int *) ;
 scalar_t__ NgSendData (int,char*,char*,int) ;
 scalar_t__ NgSendMsg (int,char*,int ,int ,struct ngm_connect*,int) ;
 int NgSetDebug (int) ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int Usage () ;
 int WriteAscii (int *,int) ;
 int close (int) ;
 int dup2 (int,int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,...) ;
 int execv (char*,char**) ;
 int fclose (int ) ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 int infd ;
 int * msgs ;
 int optarg ;
 scalar_t__ optind ;
 int outfd ;
 int read (int,char*,int) ;
 scalar_t__ select (int ,int *,int *,int *,int *) ;
 int send_msgs (int,char const*) ;
 int sl_add (int *,int ) ;
 int * sl_init () ;
 int snprintf (int ,int,char*,...) ;
 int stderr ;
 int stdin ;
 int write (int ,char*,int) ;

int
main(int ac, char *av[])
{
 struct ngm_connect ngc;
 const char *path = ((void*)0);
 const char *hook = DEFAULT_HOOKNAME;
 int csock, dsock;
 int asciiFlag = 0;
 int loopFlag = 0;
 int noInput = 0;
 int execFlag = 0;
 int ch;

 if ((msgs = sl_init()) == ((void*)0))
  err(EX_OSERR, ((void*)0));


 while ((ch = getopt(ac, av, "aedlm:nsS")) != -1) {
  switch (ch) {
  case 'a':
   asciiFlag = 1;
   break;
  case 'd':
   NgSetDebug(NgSetDebug(-1) + 1);
   break;
  case 'e':
   execFlag = 1;
   break;
  case 'l':
   loopFlag = 1;
   break;
  case 'n':
   noInput = 1;
   break;
  case 'm':
   if (sl_add(msgs, optarg) == -1)
    err(EX_OSERR, ((void*)0));
   break;
  case 's':
   outfd = STDIN_FILENO;
   break;
  case 'S':
   infd = STDOUT_FILENO;
   break;
  case '?':
  default:
   Usage();
  }
 }
 ac -= optind;
 av += optind;

 if (execFlag) {
  if (asciiFlag || loopFlag) {
   fprintf(stderr, "conflicting options\n");
   Usage();
  }
  if (ac < 3)
   Usage();
  path = av[0];
  hook = av[1];
  av += 2;
  ac -= 2;
 } else {

  switch (ac) {
  case 2:
   hook = av[1];

  case 1:
   path = av[0];
   break;
  default:
   Usage();
  }
 }


 if (NgMkSockNode(((void*)0), &csock, &dsock) < 0)
  errx(EX_OSERR, "can't get sockets");


 snprintf(ngc.path, sizeof(ngc.path), "%s", path);
 snprintf(ngc.ourhook, sizeof(ngc.ourhook), NG_SOCK_HOOK_NAME);
 snprintf(ngc.peerhook, sizeof(ngc.peerhook), "%s", hook);

 if (NgSendMsg(csock, ".",
     NGM_GENERIC_COOKIE, NGM_CONNECT, &ngc, sizeof(ngc)) < 0)
  errx(EX_OSERR, "can't connect to node");

 if (execFlag) {

  (void)close(0);
  (void)close(1);
  if (!noInput)
   (void)dup2(dsock, 0);
  (void)dup2(dsock, 1);

  send_msgs(csock, path);


  (void)execv(av[0], av);
  err(EX_OSERR, "%s", av[0]);

 } else
  send_msgs(csock, path);


 if (noInput)
  fclose(stdin);


 while (1) {
  fd_set rfds;


  FD_ZERO(&rfds);
  if (!noInput)
   FD_SET(infd, &rfds);
  FD_SET(dsock, &rfds);


  if (select(FD_SETSIZE, &rfds, ((void*)0), ((void*)0), ((void*)0)) < 0)
   err(EX_OSERR, "select");


  if (FD_ISSET(dsock, &rfds)) {
   char buf[BUF_SIZE];
   int rl, wl;


   if ((rl = NgRecvData(dsock,
       buf, sizeof(buf), ((void*)0))) < 0)
    err(EX_OSERR, "read(hook)");
   if (rl == 0)
    errx(EX_OSERR, "read EOF from hook?!");


   if (asciiFlag)
    WriteAscii((u_char *) buf, rl);
   else if ((wl = write(outfd, buf, rl)) != rl) {
    if (wl < 0) {
     err(EX_OSERR, "write(stdout)");
    } else {
     errx(EX_OSERR,
         "stdout: read %d, wrote %d",
         rl, wl);
    }
   }

   if (loopFlag) {
    if (NgSendData(dsock, NG_SOCK_HOOK_NAME, buf, rl) < 0)
     err(EX_OSERR, "write(hook)");
   }
  }


  if (FD_ISSET(infd, &rfds)) {
   char buf[BUF_SIZE];
   int rl;


   if ((rl = read(infd, buf, sizeof(buf))) < 0)
    err(EX_OSERR, "read(stdin)");
   if (rl == 0)
    errx(EX_OSERR, "EOF(stdin)");


   if (NgSendData(dsock, NG_SOCK_HOOK_NAME, buf, rl) < 0)
    err(EX_OSERR, "write(hook)");
  }
 }
}
