
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct httpd_thread_statep {int hts_fd; } ;
struct TYPE_2__ {int listen_sock; } ;


 int accept (int ,int *,int *) ;
 int close (int) ;
 int http_serve (int,int ) ;
 TYPE_1__* statep ;

__attribute__((used)) static void *
httpd_worker(void *arg)
{
 struct httpd_thread_statep *htsp;
 int sock;

 htsp = arg;

 while (1) {
  sock = accept(statep->listen_sock, ((void*)0), ((void*)0));
  if (sock < 0)
   continue;
  (void)http_serve(sock, htsp->hts_fd);
  close(sock);
 }
}
