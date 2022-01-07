
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ accept (int ,struct sockaddr*,int*) ;
 scalar_t__ con_sock ;
 int exit (int) ;
 int http_sock ;
 int perror (char*) ;
 int source ;

__attribute__((used)) static void
wait_connection(void)
{
 socklen_t lg;

 lg = sizeof(struct sockaddr_in);

 con_sock = accept(http_sock, (struct sockaddr *) & source, &lg);
 if (con_sock <= 0) {
  perror("accept");
  exit(1);
 }
}
