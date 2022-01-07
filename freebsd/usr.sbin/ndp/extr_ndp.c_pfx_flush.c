
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dummyif ;
typedef int caddr_t ;


 int AF_INET6 ;
 int IFNAMSIZ ;
 int SIOCSPFXFLUSH_IN6 ;
 int SOCK_DGRAM ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int socket (int ,int ,int ) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void
pfx_flush()
{
 char dummyif[IFNAMSIZ+8];
 int sock;

 if ((sock = socket(AF_INET6, SOCK_DGRAM, 0)) < 0)
  err(1, "socket");
 strlcpy(dummyif, "lo0", sizeof(dummyif));
 if (ioctl(sock, SIOCSPFXFLUSH_IN6, (caddr_t)&dummyif) < 0)
  err(1, "ioctl(SIOCSPFXFLUSH_IN6)");

 close(sock);
}
