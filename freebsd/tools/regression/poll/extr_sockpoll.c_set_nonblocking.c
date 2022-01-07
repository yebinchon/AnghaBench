
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,int) ;

__attribute__((used)) static int
set_nonblocking(int sck)
{
 int flags;

 flags = fcntl(sck, F_GETFL, 0);
 flags |= O_NONBLOCK;

 if (fcntl(sck, F_SETFL, flags))
  return -1;

 return 0;
}
