
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ EINPROGRESS ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 int err (int,char*,int ) ;
 scalar_t__ errno ;
 int test ;

__attribute__((used)) static void
my_connect(int sock, struct sockaddr *sa, socklen_t len)
{

 if (connect(sock, sa, len) < 0 && errno != EINPROGRESS)
  err(-1, "%s: connect", test);
}
