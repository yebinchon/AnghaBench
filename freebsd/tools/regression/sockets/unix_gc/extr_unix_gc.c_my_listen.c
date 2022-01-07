
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,int ) ;
 scalar_t__ listen (int,int) ;
 int test ;

__attribute__((used)) static void
my_listen(int sock, int backlog)
{

 if (listen(sock, backlog) < 0)
  err(-1, "%s: listen", test);
}
