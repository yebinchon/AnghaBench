
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_LOCAL ;
 int SOCK_DGRAM ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;

__attribute__((used)) static int
socketpairdgram_create(int *fd1p, int *fd2p)
{
 int fds[2];

 if (socketpair(PF_LOCAL, SOCK_DGRAM, 0, fds) < 0)
  return (-1);

 *fd1p = fds[0];
 *fd2p = fds[1];

 return (0);
}
