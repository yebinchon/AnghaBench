
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int BUFFER ;
 int PF_INET ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 scalar_t__ recv (int,int *,int,int ) ;
 scalar_t__ send (int,int *,size_t,int ) ;
 int snprintf (int *,int,char*,char*) ;
 int socket (int ,int ,int ) ;
 size_t strlen (int *) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
http_fetch(struct sockaddr_in *sin, char *path, int quiet)
{
 u_char buffer[BUFFER];
 ssize_t len;
 size_t sofar;
 int sock;

 sock = socket(PF_INET, SOCK_STREAM, 0);
 if (sock < 0) {
  if (!quiet)
   warn("socket(PF_INET, SOCK_STREAM)");
  return (-1);
 }



 if (connect(sock, (struct sockaddr *)sin, sizeof(*sin)) < 0) {
  if (!quiet)
   warn("connect");
  close(sock);
  return (-1);
 }




 snprintf(buffer, BUFFER, "GET %s HTTP/1.0\n\n", path);
 sofar = 0;
 while (sofar < strlen(buffer)) {
  len = send(sock, buffer, strlen(buffer), 0);
  if (len < 0) {
   if (!quiet)
    warn("send");
   close(sock);
   return (-1);
  }
  if (len == 0) {
   if (!quiet)
    warnx("send: len == 0");
  }
  sofar += len;
 }


 while (1) {
  len = recv(sock, buffer, BUFFER, 0);
  if (len < 0) {
   if (!quiet)
    warn("recv");
   close(sock);
   return (-1);
  }
  if (len == 0)
   break;
 }

 close(sock);
 return (0);
}
