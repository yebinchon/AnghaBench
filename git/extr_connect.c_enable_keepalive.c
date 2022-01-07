
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ka ;


 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int _ (char*) ;
 int error_errno (int ) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static void enable_keepalive(int sockfd)
{
 int ka = 1;

 if (setsockopt(sockfd, SOL_SOCKET, SO_KEEPALIVE, &ka, sizeof(ka)) < 0)
  error_errno(_("unable to set SO_KEEPALIVE on socket"));
}
