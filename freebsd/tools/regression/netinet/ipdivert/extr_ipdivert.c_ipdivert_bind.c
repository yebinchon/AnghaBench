
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int INADDR_ANY ;
 int bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int errno ;
 int fail (char const*,char*) ;
 int failx (char const*,char*) ;
 int htonl (int ) ;
 int htons (int ) ;

__attribute__((used)) static void
ipdivert_bind(const char *test, int s, u_short port, int expect)
{
 struct sockaddr_in sin;
 int err;

 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(INADDR_ANY);
 sin.sin_port = htons(port);

 err = bind(s, (struct sockaddr *)&sin, sizeof(sin));
 if (err < 0) {
  if (expect == 0)
   fail(test, "bind");
  if (errno != expect)
   fail(test, "bind");
 } else {
  if (expect != 0)
   failx(test, "bind");
 }
}
