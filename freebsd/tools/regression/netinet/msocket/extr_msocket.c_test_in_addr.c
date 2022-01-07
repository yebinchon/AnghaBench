
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int socklen_t ;
typedef int ia ;


 int IPPROTO_IP ;
 int WARN_SUCCESS ;
 int err (int,char*,char const*,char const*) ;
 int errx (int,char*,char const*,char const*,int ,int ) ;
 int getsockopt (int,int ,int,struct in_addr*,int*) ;
 int inet_ntoa (struct in_addr) ;
 scalar_t__ memcmp (struct in_addr*,struct in_addr*,int) ;
 int setsockopt (int,int ,int,struct in_addr*,int) ;
 int warnx (char*,char const*,char const*) ;

__attribute__((used)) static void
test_in_addr(int optname, const char *optstring, struct in_addr defaultv,
    struct in_addr modifiedv, struct in_addr fakev, const char *socktype,
    int sock, int flags)
{
 socklen_t socklen;
 struct in_addr ia;
 int ret;




 ia = fakev;
 socklen = sizeof(ia);

 ret = getsockopt(sock, IPPROTO_IP, optname, &ia, &socklen);
 if (ret < 0)
  err(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s)",
      socktype, optstring);
 if (ret == 0 && (flags & WARN_SUCCESS))
  warnx("WARN: getsockopt(%s, IPPROTO_IP, %s) returned 0",
      socktype, optstring);
 if (memcmp(&ia, &defaultv, sizeof(struct in_addr)))
  errx(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s) default is "
      "%s not %s", socktype, optstring, inet_ntoa(ia),
      inet_ntoa(defaultv));




 ia = modifiedv;
 ret = setsockopt(sock, IPPROTO_IP, optname, &ia, sizeof(ia));
 if (ret == -1)
  err(-1, "FAIL: setsockopt(%s, IPPROTO_IP, %s)",
      socktype, optstring);
 if (ret == 0 && (flags & WARN_SUCCESS))
  warnx("WARN: setsockopt(%s, IPPROTO_IP, %s) returned 0",
      socktype, optstring);

 ia = fakev;
 socklen = sizeof(ia);
 ret = getsockopt(sock, IPPROTO_IP, optname, &ia, &socklen);
 if (ret < 0)
  err(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s)",
      socktype, optstring);
 if (ret == 0 && (flags & WARN_SUCCESS))
  warnx("WARN: getsockopt(%s, IPPROTO_IP, %s) returned 0",
      socktype, optstring);
 if (memcmp(&ia, &modifiedv, sizeof(struct in_addr)))
  errx(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s) set value is "
      "%s not %s", socktype, optstring, inet_ntoa(ia),
      inet_ntoa(modifiedv));
}
