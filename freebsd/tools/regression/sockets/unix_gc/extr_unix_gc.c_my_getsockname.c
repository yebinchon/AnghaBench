
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int err (int,char*,int ) ;
 scalar_t__ getsockname (int,struct sockaddr*,int *) ;
 int test ;

__attribute__((used)) static void
my_getsockname(int s, struct sockaddr *sa, socklen_t *salen)
{

 if (getsockname(s, sa, salen) < 0)
  err(-1, "%s: getsockname", test);
}
