
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int accept (int,int *,int *) ;
 int close (int) ;
 int sleep (int) ;
 int warn (char*) ;

__attribute__((used)) static void
stream_server(int listenfd)
{
 int acceptfd;

 while (1) {
  acceptfd = accept(listenfd, ((void*)0), ((void*)0));
  if (acceptfd < 0) {
   warn("stream_server: accept");
   continue;
  }
  sleep(1);
  close(acceptfd);
 }
}
