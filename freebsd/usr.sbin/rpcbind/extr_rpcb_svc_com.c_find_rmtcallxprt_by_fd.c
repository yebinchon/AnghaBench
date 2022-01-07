
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmtcallfd_list {int fd; int * xprt; struct rmtcallfd_list* next; } ;
typedef int SVCXPRT ;


 struct rmtcallfd_list* rmthead ;

__attribute__((used)) static SVCXPRT *
find_rmtcallxprt_by_fd(int fd)
{
 struct rmtcallfd_list *rmt;

 for (rmt = rmthead; rmt != ((void*)0); rmt = rmt->next) {
  if (fd == rmt->fd) {
   return (rmt->xprt);
  }
 }
 return (((void*)0));
}
