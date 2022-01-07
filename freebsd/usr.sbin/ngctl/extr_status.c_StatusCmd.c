
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int flags; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
typedef int sbuf ;


 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;

 int NGF_RESP ;
 int NGM_GENERIC_COOKIE ;
 int NGM_TEXT_STATUS ;
 int NG_TEXTRESPONSE ;
 scalar_t__ NgRecvMsg (int ,struct ng_mesg* const,int,int *) ;
 scalar_t__ NgSendMsg (int ,char*,int ,int ,int *,int ) ;
 int csock ;
 int errno ;
 int printf (char*,char*,...) ;
 int warn (char*) ;

__attribute__((used)) static int
StatusCmd(int ac, char **av)
{
 u_char sbuf[sizeof(struct ng_mesg) + NG_TEXTRESPONSE];
 struct ng_mesg *const resp = (struct ng_mesg *) sbuf;
 char *const status = (char *) resp->data;
 char *path;
 int nostat = 0;


 switch (ac) {
 case 2:
  path = av[1];
  break;
 default:
  return (CMDRTN_USAGE);
 }


 if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE,
     NGM_TEXT_STATUS, ((void*)0), 0) < 0) {
  switch (errno) {
  case 128:
   nostat = 1;
   break;
  default:
   warn("send msg");
   return (CMDRTN_ERROR);
  }
 } else {
  if (NgRecvMsg(csock, resp, sizeof(sbuf), ((void*)0)) < 0
      || (resp->header.flags & NGF_RESP) == 0)
   nostat = 1;
 }


 if (nostat)
  printf("No status available for \"%s\"\n", path);
 else
  printf("Status for \"%s\":\n%s\n", path, status);
 return (CMDRTN_OK);
}
