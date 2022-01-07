
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_UNIX ;
 int SOCK_STREAM ;
 int err (int,char*,int ) ;
 int socket (int ,int ,int ) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int test ;

__attribute__((used)) static void
alloc5fds(int *s, int *sva, int *svb)
{

 if ((*s = socket(PF_UNIX, SOCK_STREAM, 0)) < 0)
  err(-1, "%s: socket", test);
 if (socketpair(PF_UNIX, SOCK_STREAM, 0, sva) < 0)
  err(-1, "%s: socketpair", test);
 if (socketpair(PF_UNIX, SOCK_STREAM, 0, svb) < 0)
  err(-1, "%s: socketpair", test);
}
