
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_family; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef int reply ;


 int AF_INET ;
 scalar_t__ INADDR_NONE ;
 int bcopy (char*,char*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 struct hostent* gethostbyname (char*) ;
 int h_errno ;
 int hstrerror (int ) ;
 scalar_t__ inet_addr (char*) ;
 int xo_warnx (char*,char*,int ) ;

__attribute__((used)) static struct sockaddr_in *
getaddr(char *host)
{
 struct hostent *hp;
 static struct sockaddr_in reply;

 bzero(&reply, sizeof(reply));
 reply.sin_len = sizeof(reply);
 reply.sin_family = AF_INET;
 reply.sin_addr.s_addr = inet_addr(host);
 if (reply.sin_addr.s_addr == INADDR_NONE) {
  if (!(hp = gethostbyname(host))) {
   xo_warnx("%s: %s", host, hstrerror(h_errno));
   return (((void*)0));
  }
  bcopy((char *)hp->h_addr, (char *)&reply.sin_addr,
   sizeof reply.sin_addr);
 }
 return (&reply);
}
