
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {scalar_t__ arglen; int flags; int cmd; char* cmdstr; } ;
struct ng_mesg {char* data; TYPE_1__ header; } ;


 int DumpAscii (int const*,scalar_t__) ;
 int NGF_RESP ;
 int NGM_BINARY2ASCII ;
 int NGM_GENERIC_COOKIE ;
 int NG_PATHSIZ ;
 scalar_t__ NgAllocRecvMsg (int ,struct ng_mesg**,char*) ;
 scalar_t__ NgSendMsg (int ,char*,int ,int ,struct ng_mesg*,scalar_t__) ;
 int csock ;
 int free (struct ng_mesg*) ;
 int printf (char*,...) ;
 int warn (char*) ;

void
MsgRead(void)
{
 struct ng_mesg *m, *m2;
 struct ng_mesg *ascii;
 char path[NG_PATHSIZ];


 if (NgAllocRecvMsg(csock, &m, path) < 0) {
  warn("recv incoming message");
  return;
 }


 if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE,
       NGM_BINARY2ASCII, m, sizeof(*m) + m->header.arglen) < 0
     || NgAllocRecvMsg(csock, &m2, ((void*)0)) < 0) {
  printf("Rec'd %s %d from \"%s\":\n",
      (m->header.flags & NGF_RESP) != 0 ? "response" : "command",
      m->header.cmd, path);
  if (m->header.arglen == 0)
   printf("No arguments\n");
  else
   DumpAscii((const u_char *)m->data, m->header.arglen);
  free(m);
  return;
 }


 free(m);
 ascii = (struct ng_mesg *)m2->data;
 printf("Rec'd %s \"%s\" (%d) from \"%s\":\n",
     (ascii->header.flags & NGF_RESP) != 0 ? "response" : "command",
     ascii->header.cmdstr, ascii->header.cmd, path);
 if (*ascii->data != '\0')
  printf("Args:\t%s\n", ascii->data);
 else
  printf("No arguments\n");
 free(m2);
}
