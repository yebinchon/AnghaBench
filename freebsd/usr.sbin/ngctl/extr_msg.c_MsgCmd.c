
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int dummy; } ;
typedef int fd_set ;


 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;
 int EX_OSERR ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int MsgRead () ;
 scalar_t__ NgSendAsciiMsg (scalar_t__,char*,char*,char*,char*) ;
 scalar_t__ csock ;
 int err (int ,char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int memset (struct timeval*,int ,int) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int snprintf (char*,int,char*,char*) ;
 int strlen (char*) ;
 int warn (char*) ;

__attribute__((used)) static int
MsgCmd(int ac, char **av)
{
 char *buf;
 char *path, *cmdstr;
 int i, len;


 if (ac < 3)
  return (CMDRTN_USAGE);
 path = av[1];
 cmdstr = av[2];


 for (len = 1, i = 3; i < ac; i++)
  len += strlen(av[i]) + 1;
 if ((buf = malloc(len)) == ((void*)0)) {
  warn("malloc");
  return (CMDRTN_ERROR);
 }
 for (*buf = '\0', i = 3; i < ac; i++) {
  snprintf(buf + strlen(buf),
      len - strlen(buf), " %s", av[i]);
 }


 if (NgSendAsciiMsg(csock, path, "%s%s", cmdstr, buf) < 0) {
  free(buf);
  warn("send msg");
  return (CMDRTN_ERROR);
 }
 free(buf);


 {
  struct timeval tv;
  fd_set rfds;

  FD_ZERO(&rfds);
  FD_SET(csock, &rfds);
  memset(&tv, 0, sizeof(tv));
  switch (select(csock + 1, &rfds, ((void*)0), ((void*)0), &tv)) {
  case -1:
   err(EX_OSERR, "select");
  case 0:
   break;
  default:
   MsgRead();
   break;
  }
 }


 return (CMDRTN_OK);
}
