
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int sin_len; void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin2 ;
typedef int sin1 ;


 void* AF_INET ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int UDP_PORT1 ;
 int UDP_PORT2 ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 void* htonl (int ) ;
 void* htons (int ) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
udp_create(int *fd1p, int *fd2p)
{
 struct sockaddr_in sin1, sin2;
 int sock1, sock2;

 sock1 = socket(PF_INET, SOCK_DGRAM, 0);
 if (sock1 == -1)
  return (-1);

 sock2 = socket(PF_INET, SOCK_DGRAM, 0);
 if (sock2 == -1) {
  close(sock1);
  return (-1);
 }

 bzero(&sin1, sizeof(sin1));
 sin1.sin_len = sizeof(sin1);
 sin1.sin_family = AF_INET;
 sin1.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sin1.sin_port = htons(UDP_PORT1);

 bzero(&sin2, sizeof(sin2));
 sin2.sin_len = sizeof(sin2);
 sin2.sin_family = AF_INET;
 sin2.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sin2.sin_port = htons(UDP_PORT2);

 if (bind(sock1, (struct sockaddr *) &sin1, sizeof(sin1)) < 0) {
  close(sock1);
  close(sock2);
  return (-1);
 }

 if (bind(sock2, (struct sockaddr *) &sin2, sizeof(sin2)) < 0) {
  close(sock1);
  close(sock2);
  return (-1);
 }

 if (connect(sock1, (struct sockaddr *) &sin2, sizeof(sin2)) < 0) {
  close(sock1);
  close(sock2);
  return (-1);
 }

 if (connect(sock2, (struct sockaddr *) &sin1, sizeof(sin1)) < 0) {
  close(sock1);
  close(sock2);
  return (-1);
 }

 *fd1p = sock1;
 *fd2p = sock2;

 return (0);
}
