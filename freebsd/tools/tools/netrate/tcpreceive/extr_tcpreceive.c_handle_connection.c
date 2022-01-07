
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ ssize_t ;


 int BUFFERSIZE ;
 int accept (int,int *,int *) ;
 int close (int) ;
 scalar_t__ recv (int,int *,int,int ) ;
 scalar_t__ send (int,int *,scalar_t__,int ) ;
 int warn (char*) ;

__attribute__((used)) static void
handle_connection(int accept_sock)
{
 u_char buffer[BUFFERSIZE];
 ssize_t len, recvlen, sofar;
 int s;

 s = accept(accept_sock, ((void*)0), ((void*)0));
 if (s < 0) {
  warn("accept");
  return;
 }

 while (1) {
  recvlen = recv(s, buffer, BUFFERSIZE, 0);
  if (recvlen < 0 || recvlen == 0) {
   close(s);
   return;
  }
  sofar = 0;
  while (sofar < recvlen) {
   len = send(s, buffer + sofar, recvlen - sofar, 0);
   if (len < 0) {
    close(s);
    return;
   }
   sofar += len;
  }
 }
}
