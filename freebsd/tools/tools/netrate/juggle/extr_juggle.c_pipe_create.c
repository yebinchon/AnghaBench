
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pipe (int*) ;

__attribute__((used)) static int
pipe_create(int *fd1p, int *fd2p)
{
 int fds[2];

 if (pipe(fds) < 0)
  return (-1);

 *fd1p = fds[0];
 *fd2p = fds[1];

 return (0);
}
