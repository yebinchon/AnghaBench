
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tv ;
struct timeval {int dummy; } ;
typedef int fd_set ;
typedef int buf ;
struct TYPE_2__ {int (* func ) (int ,int *) ;} ;


 scalar_t__ CMDRTN_QUIT ;
 scalar_t__ DoParseCommand (char*) ;
 int EX_OSERR ;
 scalar_t__ FD_ISSET (int ,int *) ;
 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int LINE_MAX ;
 int MAX (int ,int ) ;
 char* PROMPT ;
 int ReadSockets (int *) ;
 int csock ;
 int dsock ;
 int err (int ,char*) ;
 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 TYPE_1__ help_cmd ;
 int memset (struct timeval*,int ,int) ;
 int printf (char*,...) ;
 scalar_t__ select (int const,int *,int *,int *,struct timeval*) ;
 int stdin ;
 int stdout ;
 int stub1 (int ,int *) ;

__attribute__((used)) static int
DoInteractive(void)
{
 const int maxfd = MAX(csock, dsock) + 1;

 (*help_cmd.func)(0, ((void*)0));
 while (1) {
  struct timeval tv;
  fd_set rfds;


  FD_ZERO(&rfds);
  FD_SET(csock, &rfds);
  FD_SET(dsock, &rfds);
  memset(&tv, 0, sizeof(tv));
  if (select(maxfd, &rfds, ((void*)0), ((void*)0), &tv) <= 0) {


   printf("%s", PROMPT);
   fflush(stdout);
   FD_ZERO(&rfds);
   FD_SET(0, &rfds);
   FD_SET(csock, &rfds);
   FD_SET(dsock, &rfds);
   if (select(maxfd, &rfds, ((void*)0), ((void*)0), ((void*)0)) < 0)
    err(EX_OSERR, "select");


   if (!FD_ISSET(0, &rfds))
    printf("\n");
  }

  ReadSockets(&rfds);


  if (FD_ISSET(0, &rfds)) {
   char buf[LINE_MAX];

   if (fgets(buf, sizeof(buf), stdin) == ((void*)0)) {
    printf("\n");
    break;
   }
   if (DoParseCommand(buf) == CMDRTN_QUIT)
    break;
  }
 }
 return (CMDRTN_QUIT);
}
