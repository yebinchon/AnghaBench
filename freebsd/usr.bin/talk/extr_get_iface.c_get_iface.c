
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct sockaddr_in {int sin_len; struct in_addr sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 void* AF_INET ;
 scalar_t__ EADDRINUSE ;
 int INADDR_ANY ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int getsockname (int,struct sockaddr*,int*) ;
 int htonl (int ) ;
 void* htons (int) ;
 int memcpy (struct in_addr*,struct in_addr*,int) ;
 int ntohs (void*) ;
 int socket (int ,int ,int ) ;

int
get_iface(struct in_addr *dst, struct in_addr *iface)
{
 static struct sockaddr_in local;
 struct sockaddr_in remote;
 socklen_t namelen;
 int s, rv;

 memcpy(&remote.sin_addr, dst, sizeof remote.sin_addr);
 remote.sin_port = htons(60000);
 remote.sin_family = AF_INET;
 remote.sin_len = sizeof remote;

 local.sin_addr.s_addr = htonl(INADDR_ANY);
 local.sin_port = htons(60000);
 local.sin_family = AF_INET;
 local.sin_len = sizeof local;

 s = socket(PF_INET, SOCK_DGRAM, 0);
 if (s < 0)
  return -1;

 do {
  rv = bind(s, (struct sockaddr *)&local, sizeof local);
  local.sin_port = htons(ntohs(local.sin_port) + 1);
 } while(rv < 0 && errno == EADDRINUSE);

 if (rv < 0) {
  close(s);
  return -1;
 }

 do {
  rv = connect(s, (struct sockaddr *)&remote, sizeof remote);
  remote.sin_port = htons(ntohs(remote.sin_port) + 1);
 } while(rv < 0 && errno == EADDRINUSE);

 if (rv < 0) {
  close(s);
  return -1;
 }

 namelen = sizeof local;
 rv = getsockname(s, (struct sockaddr *)&local, &namelen);
 close(s);
 if (rv < 0)
  return -1;

 memcpy(iface, &local.sin_addr, sizeof local.sin_addr);
 return 0;
}
