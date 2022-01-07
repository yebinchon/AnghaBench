
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_LOCAL ;
 int SOCK_DGRAM ;
 int err (int,char*,char const*) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;

__attribute__((used)) static void
setup_udsdgram(const char *test, int *fdp)
{

 if (socketpair(PF_LOCAL, SOCK_DGRAM, 0, fdp) < 0)
  err(1, "%s: setup_udsdgram: socketpair", test);
}
