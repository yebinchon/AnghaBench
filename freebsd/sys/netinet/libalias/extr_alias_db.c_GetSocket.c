
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct libalias {int sockCount; } ;
typedef int sock_addr ;


 int AF_INET ;
 int INADDR_ANY ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_TCP ;
 int LINK_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 int htonl (int ) ;
 int socket (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static u_short
GetSocket(struct libalias *la, u_short port_net, int *sockfd, int link_type)
{
 int err;
 int sock;
 struct sockaddr_in sock_addr;

 LIBALIAS_LOCK_ASSERT(la);
 if (link_type == LINK_TCP)
  sock = socket(AF_INET, SOCK_STREAM, 0);
 else if (link_type == LINK_UDP)
  sock = socket(AF_INET, SOCK_DGRAM, 0);
 else {




  return (0);
 }

 if (sock < 0) {




  return (0);
 }
 sock_addr.sin_family = AF_INET;
 sock_addr.sin_addr.s_addr = htonl(INADDR_ANY);
 sock_addr.sin_port = port_net;

 err = bind(sock,
     (struct sockaddr *)&sock_addr,
     sizeof(sock_addr));
 if (err == 0) {
  la->sockCount++;
  *sockfd = sock;
  return (1);
 } else {
  close(sock);
  return (0);
 }
}
