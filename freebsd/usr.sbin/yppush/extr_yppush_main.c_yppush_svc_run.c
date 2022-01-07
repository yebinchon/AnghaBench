
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 int EINTR ;
 int errno ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int strerror (int ) ;
 int svc_fdset ;
 int svc_getreqset (int *) ;
 scalar_t__ svc_maxfd ;
 int yp_error (char*,...) ;

__attribute__((used)) static int
yppush_svc_run(int timeout_secs)
{
 int rc;
 fd_set readfds;
 struct timeval timeout;

 timeout.tv_usec = 0;
 timeout.tv_sec = timeout_secs;

retry:
 readfds = svc_fdset;
 rc = select(svc_maxfd + 1, &readfds, ((void*)0), ((void*)0), &timeout);
 switch (rc) {
 case -1:
  if (errno == EINTR)
   goto retry;
  yp_error("select failed: %s", strerror(errno));
  break;
 case 0:
  yp_error("select() timed out");
  break;
 default:
  svc_getreqset(&readfds);
  break;
 }
 return rc;
}
