
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; int sin6_port; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin6 ;


 int AF_INET6 ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOCK_STREAM ;
 int bzero (struct sockaddr_in6*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 int htons (int) ;
 int in6addr_loopback ;
 int socket (int ,int ,int ) ;

int
main(int argc, char *argv[])
{
 struct sockaddr_in6 sin6;
 int s;




 s = socket(PF_INET6, SOCK_DGRAM, 0);
 if (s < 0)
  err(-1, "socket(PF_INET6, SOCK_DGRAM, 0)");
 close(s);





 s = socket(PF_INET6, SOCK_DGRAM, 0);
 if (s < 0)
  err(-1, "socket(PF_INET6, SOCK_DGRAM, 0)");
 bzero(&sin6, sizeof(sin6));
 sin6.sin6_len = sizeof(sin6);
 sin6.sin6_family = AF_INET6;
 sin6.sin6_addr = in6addr_loopback;
 sin6.sin6_port = htons(1024);
 if (connect(s, (struct sockaddr *)&sin6, sizeof(sin6)) < 0)
  err(-1, "connect(SOCK_DGRAM, ::1)");
 close(s);




 s = socket(PF_INET6, SOCK_STREAM, 0);
 if (s < 0)
  err(-1, "socket(PF_INET6, SOCK_STREAM, 0)");
 close(s);




 s = socket(PF_INET6, SOCK_RAW, 0);
 if (s < 0)
  err(-1, "socket(PF_INET6, SOCK_RAW, 0)");
 close(s);

 return (0);
}
