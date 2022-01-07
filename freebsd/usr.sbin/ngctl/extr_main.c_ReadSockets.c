
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int fd_set ;


 int DumpAscii (int *,int) ;
 int EX_OSERR ;
 scalar_t__ FD_ISSET (int ,int *) ;
 int MsgRead () ;
 int NG_HOOKSIZ ;
 int NgAllocRecvData (int ,int **,char*) ;
 int csock ;
 int dsock ;
 int err (int ,char*,char*) ;
 int errx (int ,char*,char*) ;
 int free (int *) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
ReadSockets(fd_set *rfds)
{

 if (FD_ISSET(csock, rfds))
  MsgRead();


 if (FD_ISSET(dsock, rfds)) {
  char hook[NG_HOOKSIZ];
  u_char *buf;
  int rl;


  if ((rl = NgAllocRecvData(dsock, &buf, hook)) < 0)
   err(EX_OSERR, "reading hook \"%s\"", hook);
  if (rl == 0)
   errx(EX_OSERR, "EOF from hook \"%s\"?", hook);


  printf("Rec'd data packet on hook \"%s\":\n", hook);
  DumpAscii(buf, rl);
  free(buf);
 }
}
