
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_SET (int,int *) ;

__attribute__((used)) static int
fd_add(int fd, fd_set *fdset, int nfds)
{




 if (fd <= 0)
  return (nfds);

 FD_SET(fd, fdset);
 if (fd > nfds)
  nfds = fd;
 return (nfds);
}
