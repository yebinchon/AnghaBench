
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int i ;


 int SOL_SOCKET ;
 int SO_LISTENQLIMIT ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 int warn (char*,char const*,char const*,char const*) ;
 int warnx (char*,char const*,char const*,char const*,int) ;

__attribute__((used)) static int
socket_get_backlog(int sock, int *backlogp, const char *testclass,
    const char *test, const char *testfunc)
{
 socklen_t len;
 int i;

 len = sizeof(i);
 if (getsockopt(sock, SOL_SOCKET, SO_LISTENQLIMIT, &i, &len) < 0) {
  warn("%s: %s: %s: socket_get_backlog: getsockopt("
      "SOL_SOCKET, SO_LISTENQLIMIT)", testclass, test,
      testfunc);
  return (-1);
 }

 if (len != sizeof(i)) {
  warnx("%s: %s: %s: socket_get_backlog: getsockopt("
      "SOL_SOCKET, SO_LISTENQLIMIT): returned size %d",
      testclass, test, testfunc, len);
  return (-1);
 }

 *backlogp = i;

 return (0);
}
