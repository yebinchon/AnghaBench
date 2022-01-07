
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int c ;


 scalar_t__ recv (int,char*,int,int ) ;
 int warn (char*) ;

__attribute__((used)) static void
datagram_server(int serverfd)
{
 ssize_t len;
 char c;

 while (1) {
  len = recv(serverfd, &c, sizeof(c), 0);
  if (len < 0)
   warn("datagram_server: recv");
 }
}
