
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int err (int,char*,int ) ;
 int test ;

__attribute__((used)) static void
my_bind(int sock, struct sockaddr *sa, socklen_t len)
{

 if (bind(sock, sa, len) < 0)
  err(-1, "%s: bind", test);
}
