
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sa_len; } ;
struct TYPE_4__ {TYPE_3__ sa; } ;
typedef TYPE_1__ sockunion_t ;
typedef int optval ;


 int IPPROTO_UDP ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEPORT ;
 int bind (int,TYPE_3__*,int ) ;
 int close (int) ;
 scalar_t__ doreuseport ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int warn (char*) ;

__attribute__((used)) static int
open_and_bind_socket(sockunion_t *bsu)
{
 int error, optval, sock;

 sock = -1;

 sock = socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP);
 if (sock == -1) {
  warn("socket");
  return (-1);
 }

 if (doreuseport) {
  optval = 1;
  if (setsockopt(sock, SOL_SOCKET, SO_REUSEPORT, &optval,
      sizeof(optval)) < 0) {
   warn("setsockopt SO_REUSEPORT");
   close(sock);
   return (-1);
  }
 }

 if (bsu != ((void*)0)) {
  error = bind(sock, &bsu->sa, bsu->sa.sa_len);
  if (error == -1) {
   warn("bind");
   close(sock);
   return (-1);
  }
 }

 return (sock);
}
