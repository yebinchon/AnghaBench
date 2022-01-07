
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ AF_INET ;
 int SOCK_DGRAM ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int getsockname (int,struct sockaddr*,int*) ;
 int htons (int) ;
 int memcpy (struct sockaddr_in*,struct sockaddr_in const*,int) ;
 int setsin (struct sockaddr_in*,int ) ;
 int socket (scalar_t__,int ,int ) ;

const char *
findsaddr(register const struct sockaddr_in *to,
    register struct sockaddr_in *from)
{
 const char *errstr;
 struct sockaddr_in cto, cfrom;
 int s;
 socklen_t len;

 s = socket(AF_INET, SOCK_DGRAM, 0);
 if (s == -1)
  return ("failed to open DGRAM socket for src addr selection.");

 errstr = ((void*)0);
 len = sizeof(struct sockaddr_in);
 memcpy(&cto, to, len);
 cto.sin_port = htons(65535);
 if (connect(s, (struct sockaddr *)&cto, len) == -1) {
  errstr = "failed to connect to peer for src addr selection.";
  goto err;
 }

 if (getsockname(s, (struct sockaddr *)&cfrom, &len) == -1) {
  errstr = "failed to get socket name for src addr selection.";
  goto err;
 }

 if (len != sizeof(struct sockaddr_in) || cfrom.sin_family != AF_INET) {
  errstr = "unexpected address family in src addr selection.";
  goto err;
 }


 setsin(from, cfrom.sin_addr.s_addr);

err:
 (void) close(s);


 return (errstr);
}
