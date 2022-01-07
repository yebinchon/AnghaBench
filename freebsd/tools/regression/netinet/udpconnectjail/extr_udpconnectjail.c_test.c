
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;


 int PF_INET ;
 int SOCK_DGRAM ;
 scalar_t__ close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int errx (int,char*,char const*,int ,...) ;
 int inet_ntoa (int ) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
test(const char *context, struct sockaddr_in *sin)
{
 int sock;

 sock = socket(PF_INET, SOCK_DGRAM, 0);
 if (sock == -1)
  errx(-1, "%s: socket(PF_INET, SOCK_DGRAM, 0): %s", context,
      strerror(errno));

 if (connect(sock, (struct sockaddr *)sin, sizeof(*sin)) < 0)
  errx(-1, "%s: connect(%s): %s", context,
      inet_ntoa(sin->sin_addr), strerror(errno));

 if (close(sock) < 0)
  errx(-1, "%s: close(): %s", context, strerror(errno));
}
