
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;


 scalar_t__ ENOPROTOOPT ;
 int PF_INET ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_LISTENQLIMIT ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
test_set_qlimit(void)
{
 int i, ret, sock;

 sock = socket(PF_INET, SOCK_STREAM, 0);
 if (sock < 0)
  err(-1, "test_set_qlimit: socket(PF_INET, SOCK_STREAM)");

 i = 0;
 ret = setsockopt(sock, SOL_SOCKET, SO_LISTENQLIMIT, &i, sizeof(i));
 if (ret < 0 && errno != ENOPROTOOPT) {
  warn("test_set_qlimit: setsockopt(SOL_SOCKET, "
      "SO_LISTENQLIMIT, 0): unexpected error");
  close(sock);
 }

 if (ret == 0) {
  warnx("test_set_qlimit: setsockopt(SOL_SOCKET, "
      "SO_LISTENQLIMIT, 0) succeeded");
  close(sock);
  exit(-1);
 }
 close(sock);
}
