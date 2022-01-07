
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SETFL ;
 int O_NONBLOCK ;
 int err (int,char*,int ) ;
 scalar_t__ fcntl (int,int ,int ) ;
 int test ;

__attribute__((used)) static void
setnonblock(int s)
{

 if (fcntl(s, F_SETFL, O_NONBLOCK) < 0)
  err(-1, "%s: fcntl(F_SETFL, O_NONBLOCK)", test);
}
